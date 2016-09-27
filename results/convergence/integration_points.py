#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

kB = 8.61733e-5

para = {
    'tell': False,

    'T': 10.0,
    'error': 0.001,
    'rate': 0.2,

    'lambda': 1.00,
    'muStar': 0.10,
    'cutoff': 15.0,

    'dos': 'dos.in',
    'n': 0.5,
    }

resolutions = range(100, 501, 5)
frequencies = [0.01, 0.02]

Tc = np.empty((len(frequencies), len(resolutions)))

for i, resolution in enumerate(resolutions):
    print resolution, 'integration points'

    ebmb.square_dos(para['dos'], resolution=resolution)

    for j, para['omegaE'] in enumerate(frequencies):
        Tc[j, i] = kB / para['omegaE'] * ebmb.get(program='critical', **para)

plot = storylines.Plot(7, 7, right=0.5, xstep=100, ystep=0.01)

plot.xlabel = r'integration points'
plot.ylabel = r'$T \sub c / \omega \sub E$'
plot.legend = r'$\omega \sub E / \mathrm{meV}$'

for i, (frequency, color) in enumerate(zip(frequencies, ['blue', 'red'])):
    plot.line(resolutions, Tc[i, :], omit=False, mark='*', only_marks=True,
        color=color, label='%.0f' % (1e3 * frequency))

plot.save('integration_points.sl', external=True)
