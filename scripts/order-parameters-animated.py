#!/usr/bin/env python

import ebmb
import storylines

import numpy as np

T = np.linspace(1, 60, 1001)
X = [-3.5, -3.0, -2.5, -2.0, -1.5, -1.0, -0.5]

Delta = np.empty((len(X) + 1, 2, len(T)))

para = {
    'file': 'order-parameters-animated.dat',
    'tell': False,
}

plot = storylines.Plot(9.8, 4, ymin=0, zmin=-4, zmax=-0.5, xstep=10, ystep=2,
     zticks=[(-4, r'$-\infty$'), -3, -2, -1])

plot.xlabel = r'$T / \unit K$'
plot.ylabel = r'$\Delta(\mathrm i \omega_0) / \unit{meV}$'
plot.zlabel = r'$\log_{10} x$'

for n, (name, legend, lamda) in enumerate([
    ('2to1', r'1 & x \\ 0 & 2', lambda x: [[1, 10 ** x], [0, 2]]),
    ('1to2', r'1 & 0 \\ x & 2', lambda x: [[1, 0], [10 ** x, 2]]),
]):

    plot.legend = (r'\footnotesize '
        r'$\vec \lambda = \begin{bmatrix} %s \end{bmatrix}$' % legend)

    for j, para['T'] in enumerate(T):
        Delta[0, :, j] = 1e3 * ebmb.get(lamda=[[1, 0], [0, 2]],
                **para)['Delta'][:, 0]

        for i, x in enumerate(X, 1):
            Delta[i, :, j] = 1e3 * ebmb.get(lamda=lamda(x),
                **para)['Delta'][:, 0]

            print('x = %.1f, T = %.1f K' % (x, para['T']))

    plot.line(T, Delta[0, 0, :], color='blue', thick=True)
    plot.line(T, Delta[0, 1, :], color='blue', thick=True, dashed=True)

    plot.line(z=-1)

    plot.save('../results/order-parameters-animated-%s-0.sl' % name,
        external=True)

    plot.lines[n]['options']['color'] = 'blue!33!white'

    for i, x in enumerate(X, 1):
        color = 'red!%.1f!blue' % (100 * (x + 4) / 3.5)

        plot.lines[1 - n]['options']['color'] = color

        if name == '2to1':
            plot.line(T, Delta[i, 0, :], color=color, thick=True)

        if name == '1to2':
            plot.line(T, Delta[i, 1, :], color=color, thick=True, dashed=True)

        percent = 100 * (x + 4) / 3.5

        plot.save('../results/order-parameters-animated-%s-%d.sl' % (name, i),
            external=True)

        plot.lines[-1]['options']['color'] = color + '!33!white'

    plot.clear()
