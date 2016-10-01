#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

kB = 8.61733e-5
inf = 1e15

settings = {
    'file': 'lamda_inf.dat',
    'rate': 0.5,
    'error': 1e-12,
    'cutoff': 15,
    'power': False,
    }

color = ['blue', 'cyan', 'magenta']
label = ['exact', 'cutoff-independent', 'non-renormalized']

scatter = dict(mark='*', only_marks=True, omit=False)

lmax = 2.0

lamda = np.linspace(0.3, lmax, 50)
lamda_inf = np.empty(len(lamda))

plot = storylines.Plot(7, 7, right=0.5, corner=4,
    xmin=0, ymin=-1, xmax=2, ymax=1, xstep=1, ystep=1)

plot.xlabel = r'$\lambda \sub{od.}$'
plot.ylabel = r'$\lambda_\infty$'

for i, l in enumerate(lamda):
    Tc = ebmb.get('critical', lamda=l, **settings)

    lamda_inf[i] = ebmb.get('critical', T=Tc, lamda=[[0, inf], [-l, 0]],
        **settings)

plot.line(lamda, lamda_inf, color=color[0], label=label[0], **scatter)

l = np.array([0, lmax])

plot.line(l, l / 3, color=color[1], thick=True, label=label[1])
plot.line(l, 0 * l, color=color[2], thick=True, label=label[2])

plot.save('lamda_inf.sl')

upper = 4.0

plot = storylines.Plot(7, 7, right=0.5, xmin=0, ymin=0, xstep=1, ystep=1)

plot.xlabel = r'$\lambda_{1 2}$'
plot.ylabel = r'$\lambda_{2 1}$'

for l in [0.5, 1.0, 1.5]:
    Tc = ebmb.get('critical', lamda=[[0, l], [l, 0]], **settings)

    l12 = np.arange(l, upper + 1e-3, 0.1)
    l21 = np.zeros(len(l12))

    guess = l

    for i, const in enumerate(l12):
        l21[i] = ebmb.get('critical', T=Tc,
            lamda=[[0, const], [-guess, 0]], **settings)

        guess = l21[i]

    l0 = ebmb.get('critical', T=Tc, lamda=[[0, inf], [-guess, 0]],
        **settings)

    plot.line(l12,     l21,     color='lightgray', **scatter)
    plot.line(l21[1:], l12[1:], color='lightgray', **scatter)

    for l0, c in zip([l0, l / 3, 0], color):
        lower = (l ** 2 - 2 * l * l0 + l0 * upper) / (upper - l0)

        l12 = np.linspace(lower, upper, 300)
        l21 = l - (l - l0) / (l12 - l0) * (l12 - l)

        plot.line(l12, l21, color=c, thick=True)

for c, l in zip(color, label):
    plot.line(color=c, thick=True, label=l)

plot.save('lamda_inf_hyperbola.sl')
plot.clear()
