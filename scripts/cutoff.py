#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

para = {
    'file': 'cutoff.dat',
    'tell': False,

    'error': 0.001,

    'T': 1.0,

    'omegaE': 0.02,
    'lambda': 1.00,
    'muStar': 0.10,

    'dos': 'dos.in',
    'n': 0.5,
    }

print 'Calculating DOS..'

ebmb.square_dos(para['dos'], resolution=501)

print 'Calculating self-energies..'

data = []

for cutoff in np.linspace(1, 20, 39):
    results = ebmb.get(cutoff=cutoff, **para)

    print 'cutoff / omegaE = %.1f [%d]' % (cutoff, results['status'])

    for key in 'Delta', 'chi':
        results[key] *= 1000

    results['iomega'] /= para['omegaE']
    results['cutoff'] = cutoff

    results['phi'] = results['Delta'] * results['Z']

    data.append(results)

plot = storylines.Plot(4.666, 6, lower='purple', upper='teal')

plot.ylabel = r'$\omega / \omega \sub E$'
plot.zlabel = r'$\omega_N / \omega \sub E$'

plot.ymin = 0; plot.ymax = 20
plot.zmin = 0; plot.zmax = 20

for key, plot.xlabel in [
    ('Delta', r'$\Delta(\I \omega) / \unit{meV}$'),
    ('chi', r'$\chi(\I \omega) / \unit{meV}$'),
    ('Z', r'$Z(\I \omega)$'),
    ]:

    for results in data:
        plot.line(results[key], results['iomega'], results['cutoff'])

    plot.save('../results/%s_N(iomega).sl' % key, external=True)
    plot.clear()
