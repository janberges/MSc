#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

kB = 8.61733e-5
inf = 1e15

def math(string):
    string = string.replace('0.5', r'\phantom 1 \mathllap{\tfrac 1 2}')
    string = string.replace('1.5', r'\phantom 1 \mathllap{\tfrac 3 2}')
    return '$%s$' % string

settings = {
    'rate': 0.5,
    'file': 'intra.dat',
    'error': 1e-12,
    'cutoff': 25,
    }

color = ['orange', 'blue', 'red', 'purple', 'cyan']

scatter = dict(mark='*', only_marks=True, omit=False)

plots = [
    ('intra_intra.sl', [(0.5, 1.0, 1.0), (1.0, 1.0, 1.0), (1.5, 1.0, 1.0)]),
    ('intra_inter.sl', [(1.0, .01, .01), (1.0, 1.0, 1.0), (1.0, 100, 100)]),
    ('intra_askew.sl', [(1.0, 2.0, 1.0), (1.0, 1.0, 1.0), (1.0, 1.0, 2.0)]),
    ]

plot = storylines.Plot(7, 7, right=0.5,
    xmin=0, ymin=0, xmax=3, ymax=3, xstep=1, ystep=1)

plot.xlabel = r'$\lambda_{1 1}$'
plot.ylabel = r'$\lambda_{2 2}$'
plot.legend = r'$\lambda \sub{d.}, \lambda_{1 2}, \lambda_{2 1}$'

for filename, lamda in plots:
    for (l, l12, l21), c in zip(lamda, color):
        Tc = ebmb.get('critical', lamda=[[l, l12], [l21, l]], **settings)

        l11i = np.arange(0, l + 1e-3, 0.1)
        l22o = np.zeros(len(l11i))

        guess = l

        for i, l11 in enumerate(l11i):
            l22o[i] = ebmb.get('critical', T=Tc,
                lamda=[[l11, l12], [l21, -guess]], **settings)

            guess = l22o[i]

        l22i = np.arange(0, l + 1e-3, 0.1)
        l11o = np.zeros(len(l22i))

        guess = l

        for i, l22 in enumerate(l22i):
            l11o[i] = ebmb.get('critical', T=Tc,
                lamda=[[-guess, l12], [l21, l22]], **settings)

            guess = l11o[i]

        l110 = l ** 2 * l11o[0] / (l * (l11o[0] + l22o[0]) - l11o[0] * l22o[0])
        l220 = l ** 2 * l22o[0] / (l * (l11o[0] + l22o[0]) - l11o[0] * l22o[0])

        l11 = np.linspace(l11i[0], l11o[0], 300)
        l22 = l - (l - l220) / (l11 - l110) * (l11 - l)

        plot.line(l11i, l22o, color=c, **scatter)
        plot.line(l11o, l22i, color=c, **scatter)
        plot.line(l11,  l22,  color=c)

        plot.line(mark='*', color=c,
            label=math(', '.join('%g' % x for x in [l, l12, l21])))

    plot.save(filename, external=True)
    plot.clear()
