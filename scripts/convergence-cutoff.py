#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

kB = 8.61733e-5

para = {
    'file': 'convergence-cutoff.dat',
    'tell': False,

    'T': 27.0,
    'error': 0.001,
    'rate': 0.2,

    'omegaE': 0.02,
    'lambda': 1.00,
    'muStar': 0.10,

    'dos': 'convergence-cutoff.dos',
    'n': 0.5,
}

print('Calculating DOS..')

ebmb.square_dos(para['dos'], resolution=501)

log_cutoff = np.linspace(0.5, 3.0, 50)

cutoff = 10 ** log_cutoff
rescale = [True, False]

Tc = np.empty((len(rescale), len(cutoff)))

for i, para['cutoff'] in enumerate(cutoff):
    print('cutoff / omegaE = %.2f' % para['cutoff'])

    for j, para['rescale'] in enumerate(rescale):
        Tc[j, i] = kB / para['omegaE'] * ebmb.get(program='critical', **para)

plot = storylines.Plot(7, 7, right=0.5, corner=4,
    ymin=0.0625, ymax=0.09, ystep=0.01)

plot.xlabel = r'$\log_{10}(\omega_N / \omega \sub E)$'
plot.ylabel = r'$T \sub c / \omega \sub E$'
plot.legend = r'rescale?'

for i, (rescaled, color) in enumerate(zip(rescale, ['blue', 'red'])):
    plot.line(log_cutoff, Tc[i, :], mark='*', only_marks=True,
        omit=False, color=color, label='yes' if rescaled else 'no')

plot.save('../results/convergence-cutoff.sl', external=True)
