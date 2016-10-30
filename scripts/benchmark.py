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

plot_slides = storylines.Plot(4.5, 4.5, right=0.5, top=0.5)
plot_slides.ylabel = plot.ylabel

styles = [
    dict(color='blue'),
    dict(color='red'),
    dict(),
    dict(thick=True, dotted=True),
    ]

styles_slides = [
    dict(thick=True, color='cyan'),
    dict(thick=True, color='orange'),
    dict(thick=True),
    dict(very_thick=True, loosely_dotted=True),
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
        plot_slides.xlabel = plot.xlabel

        parameters.update(constant)

        for j, parameters[key] in enumerate(variable[key]):
            print '%s = %6.4f' % (key, parameters[key])

            for i, parameters['dos'] in enumerate(['none', 'benchmark.dos']):
                Tc[i, j] = ebmb.get('critical', **parameters)

                parameters['T'] = Tc[i, j]

            Tc[2, j] = McMillan(A=1.20, B=1.04, C=0.62, **parameters)
            Tc[3, j] = McMillan(A=0.94, B=1.11, C=0.74, **parameters)

        for tc, style,  style_slides,  label in zip(
            Tc, styles, styles_slides, labels):

            plot.line(variable[key], tc, label=label, **style)
            plot_slides.line(variable[key], tc, **style_slides)

        plot.xspacing = 1.5 if key == 'omegaE' else 1.0
        plot.corner   = 1   if key == 'muStar' else 4

        plot.save('../results/benchmark-' + key.lower() + extra + '.sl',
            external=True)

        plot.clear()

        if key == 'muStar':
            plot_slides.xticks = [0.0, 0.1, 0.2, 0.3]
        elif key == 'omegaE':
            plot_slides.xticks = [0.01, 0.02, 0.03]
        elif extra:
            plot_slides.xticks = [1.0, 4.0, 7.0, 10.0]
        else:
            plot_slides.xticks = None

        plot_slides.save('../results/benchmark-' + key.lower()
            + extra + '-slides.sl', external=True)

        plot_slides.clear()

    if extra:
        break

    variable = { 'lamda': np.linspace(0.50, 10.00, resolution) }
    extra = '-more'
