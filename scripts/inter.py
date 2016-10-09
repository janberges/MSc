#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

kB = 8.61733e-5
inf = 1e10

def math(string):
    string = string.replace('0.5', r'\phantom 1 \mathllap{\tfrac 1 2}')
    string = string.replace('1.5', r'\phantom 1 \mathllap{\tfrac 3 2}')
    return '$%s$' % string

settings = {
    'rate': 0.5,
    'file': 'inter.dat',
    'error': 1e-12,
    'cutoff': 25,
    }

color = ['orange', 'blue', 'red']

upper = 4.0

scatter = dict(mark='*', only_marks=True, omit=False)

plots = [
    ('inter_inter.sl', [(0.5, 0.0, 0.0), (1.0, 0.0, 0.0), (1.5, 0.0, 0.0)]),
    ('inter_intra.sl', [(1.0, 0.0, 0.0), (1.0,  10,  10), (1.0, 100, 100)]),
    ('inter_askew.sl', [(1.0, 2.0, 0.0), (1.0, 1.0, 1.0), (1.0, 0.0, 2.0)]),
    ]

plot = storylines.Plot(7, 7, right=0.5, xmin=0, ymin=0, xstep=1, ystep=1)

plot.xlabel = r'$\lambda_{1 2}$'
plot.ylabel = r'$\lambda_{2 1}$'
plot.legend = r'$\lambda \sub{od.}, \lambda_{1 1}, \lambda_{2 2}$'

for filename, lamda in plots:
    for (l, l11, l22), c in zip(lamda, color):
        Tc = ebmb.get('critical', lamda=[[l11, l], [l, l22]], **settings)

        l12i = np.arange(l, upper + 1e-3, 0.1)
        l21o = np.zeros(len(l12i))

        guess = l

        for i, l12 in enumerate(l12i):
            l21o[i] = ebmb.get('critical', T=Tc,
                lamda=[[l11, l12], [-guess, l22]], **settings)

            guess = l21o[i]

        l210 = ebmb.get('critical', T=Tc, lamda=[[l11, inf], [-guess, l22]],
            **settings)

        l21i = np.arange(l, upper + 1e-3, 0.1)
        l12o = np.zeros(len(l21i))

        guess = l

        for i, l21 in enumerate(l21i):
            l12o[i] = ebmb.get('critical', T=Tc,
                lamda=[[l11, -guess], [l21, l22]], **settings)

            guess = l12o[i]

        l120 = ebmb.get('critical', T=Tc, lamda=[[l11, -guess], [inf, l22]],
            **settings)

        lower = (l ** 2 - l * (l120 + l210) + l120 * upper) / (upper - l210)

        l12 = np.linspace(lower, upper, 300)
        l21 = l - (l - l210) / (l12 - l120) * (l12 - l)

        plot.line(l12i, l21o, color=c, **scatter)
        plot.line(l12o, l21i, color=c, **scatter)
        plot.line(l12,  l21,  color=c)

        plot.line(mark='*', color=c,
            label=math(', '.join('%g' % x for x in [l, l11, l22])))

    plot.save('../results/' + filename, external=True)
    plot.clear()
