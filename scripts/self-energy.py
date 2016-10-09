#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

para = {
    'file': 'self-energy.dat',
    'tell': False,

    'error': 0.001,

    'omegaE': 0.02,
    'lambda': 1.00,
    'muStar': 0.10,

    'cutoff': 100.0,

    'dos': 'dos.in',
    'n': 0.5,

    'resolution': 1000,
    'clip': 10.0,
    }

print 'Calculating DOS..'

ebmb.square_dos(para['dos'], resolution=501)

print 'Calculating Tc..'

Tc = ebmb.get(program='critical', **para)

print 'Calculating self-energies..'

data = []

for T in [0.6, 0.8, 0.9, 1.0]:
    results = ebmb.get(T=T * Tc, normal=T == 1.0, **para)

    print 'T / Tc = %.1f [%d]' % (T, results['status'])

    for key in 'iomega', 'omega':
        results[key] /= para['omegaE']

    for x in 'Delta', 'chi':
        for key in '%s', 'Re[%s]', 'Im[%s]':
            results[key % x] *= 1000

    results['T'] = T

    data.append(results)

plot = storylines.Plot(7, 5, margin=0)

plot.xlabel = r'$\omega / \omega \sub E$'
plot.zlabel = r'$T / T \sub c$'

plot.zticks = [0.6, 0.8, 1.0]

for key, plot.ylabel in [
    ('Delta', r'$\Delta(\I \omega) / \unit{meV}$'),
    ('chi', r'$\chi(\I \omega) / \unit{meV}$'),
    ('Z', r'$Z(\I \omega)$'),
    ]:

    for results in data if key == 'Delta' else [data[i] for i in 0, -1]:
        selections = [np.where(results['iomega'] <= cutoff) for cutoff in 3, 15]

        for sgn, n in zip([-1, 1], selections):
            plot.line(sgn * results['iomega'][n], results[key][n], results['T'],
                mark='*', mark_size='0.8pt', only_marks=True, omit=False)

    plot.save('../results/%s(iomega).sl' % key, external=True)
    plot.clear()

for key, plot.ylabel in [
    ('Delta', r'$\Delta(\omega) / \unit{meV}$'),
    ('chi', r'$\chi(\omega) / \mathrm{meV}$'),
    ('Z', r'$Z(\omega)$'),
    ]:

    for label, style in [('Im', 'dotted'), ('Re', 'solid')]:
        plot.line(thick=True, style=style, label=label)

        for results in data if key == 'Delta' else [data[i] for i in 0, -1]:
            plot.line(results['omega'], results['%s[%s]' % (label, key)],
                results['T'], thick=True, style=style)

    plot.save('../results/%s(omega).sl' % key, external=True)
    plot.clear()
