#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

kB = 8.61733e-5

para = {
    'file': 'integration_points.dat',
    'tell': False,

    'T': 10.0,
    'error': 0.001,
    'rate': 0.5,

    'lambda': 1.00,
    'muStar': 0.10,
    'cutoff': 15.0,

    'dos': 'dos.in',
    'n': 0.5,
    }

log_resolutions = np.linspace(2, 3, 200)

resolutions = (10 ** log_resolutions).round().astype(int)
frequencies = [0.01, 0.02]

Tc = np.empty((len(frequencies), len(resolutions)))

for i, resolution in enumerate(resolutions):
    print resolution, 'integration points'

    ebmb.square_dos(para['dos'], resolution=resolution)

    for j, para['omegaE'] in enumerate(frequencies):
        Tc[j, i] = kB / para['omegaE'] * ebmb.get(program='critical', **para)

plot = storylines.Plot(14, 7, right=0.5, xstep=0.1, ystep=0.02)

plot.xlabel = r'$\log_{10} n$'
plot.ylabel = r'$T \sub c / \omega \sub E$'
plot.legend = r'$\omega \sub E / \mathrm{meV}$'

for i, (frequency, color) in enumerate(zip(frequencies, ['blue', 'red'])):
    plot.line(log_resolutions, Tc[i, :], omit=False, mark='*', only_marks=True,
        color=color, label='%.0f' % (1e3 * frequency))

plot.save('integration_points.sl', external=True)
