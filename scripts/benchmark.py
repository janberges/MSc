#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

kB = 8.61733e-5

def McMillan(A, B, C, omegaE, lamda, muStar, **more):
    return omegaE / (A * kB) * np.exp(-B * (1 + lamda) \
        / (lamda - C * lamda * muStar - muStar))

parameters = {
    'tell': False,
    'file': 'benchmark.dat',
    'error': 0.01,
    'cutoff': 15,
    'rate': 0.5,
    'n': 0.5,
    }

resolution = 30

variable = {
    'omegaE': np.linspace(0.01, 0.03, resolution),
     'lamda': np.linspace(0.50, 2.00, resolution),
    'muStar': np.linspace(0.00, 0.30, resolution),
    }

constant = {
    'omegaE': 0.02,
     'lamda': 1.00,
    'muStar': 0.15,
    }

formula = {
    'omegaE': r'\omega \sub E / \unit{eV}',
     'lamda': r'\lambda',
    'muStar': r'\mu^*',
    }

print 'Calculating DOS..'

ebmb.square_dos('benchmark.dos', resolution=2001)

Tc = np.zeros((4, resolution))

plot = storylines.Plot(7, 7, right=0.5)
plot.ylabel = r'$T \sub c / \unit K$'

styles = [
    dict(color='blue'),
    dict(color='red'),
    dict(),
    dict(thick=True, dotted=True),
    ]

labels = [
    'const. DOS',
    'square DOS',
    r'\name{McMillan}',
    r'\name{Einstein}',
    ]

extra = ''

while True:
    for key in variable.keys():
        plot.xlabel = r'$%s$' % formula[key]

        parameters.update(constant)

        for j, parameters[key] in enumerate(variable[key]):
            print '%s = %6.4f' % (key, parameters[key])

            for i, parameters['dos'] in enumerate(['none', 'benchmark.dos']):
                Tc[i, j] = ebmb.get('critical', **parameters)

                parameters['T'] = Tc[i, j]

            Tc[2, j] = McMillan(A=1.20, B=1.04, C=0.62, **parameters)
            Tc[3, j] = McMillan(A=0.94, B=1.11, C=0.74, **parameters)

        for tc, style, label in zip(Tc, styles, labels):
            plot.line(variable[key], tc, label=label, **style)

        plot.xspacing = 1.5 if key == 'omegaE' else 1.0
        plot.corner   = 1   if key == 'muStar' else 4

        plot.save('../results/benchmark-' + key.lower() + extra + '.sl',
            external=True)

        plot.clear()

    if extra:
        break

    variable = { 'lamda': np.linspace(0.50, 10.00, resolution) }
    extra = '-more'
