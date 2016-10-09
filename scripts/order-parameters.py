#!/usr/bin/env python

import ebmb
import storylines

import numpy as np

T = np.linspace(1, 55, 1001)
X = np.arange(-4.5, 0.0, 0.5)[::-1]

Delta = np.empty((len(X), 2, len(T)))

para = {
    'file': 'order-parameters.dat',
    'tell': False,
    }

plot = storylines.Plot(ymin=0, ystep=2, zstep=1)

plot.xlabel = r'$T / \unit K$'
plot.ylabel = r'$\Delta(\mathrm i \omega_0) / \unit{meV}$'
plot.zlabel = r'$\log_{10} x$'

for name, plot.width, plot.height, plot.xstep, lamda in (
    ('top',  14, 7,  5, lambda x: [[1, 10 ** x], [10 ** x, 2]]),
    ('left',  7, 6, 10, lambda x: [[1,       0], [10 ** x, 2]]),
    ('right', 7, 6, 10, lambda x: [[1, 10 ** x], [0,       2]]),
    ):

    for i, x in enumerate(X):
        for j, para['T'] in enumerate(T):
            Delta[i, :, j] = 1e3 * ebmb.get(lamda=lamda(x),
                **para)['Delta'][:, 0]

            print 'x = %.1f, T = %.1f K' % (x, para['T'])

    for i, x in enumerate(X):
        plot.line(T, Delta[i, 0, :], x, thick=True)
        plot.line(T, Delta[i, 1, :], x, thick=True, dashed=True)

    if name == 'top':
        plot.line(label='1st band', thick=True)
        plot.line(label='2nd band', thick=True, dashed=True)

    plot.save('../results/order-parameters-%s.sl' + name, external=True)
    plot.clear()
