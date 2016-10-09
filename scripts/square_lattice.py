#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

t = 1

plot = storylines.Plot(4.666, 4.166)

plot.xlabel = r'$a k_x$'
plot.ylabel = r'$a k_y$'
plot.zlabel = r'$\epsilon / t$'

plot.xticks = [
    (-np.pi, r'$-\pi$'),
    (-np.pi / 2, r'$-\tfrac \pi 2$'),
    0,
    (np.pi / 2, r'$\tfrac \pi 2$'),
    (np.pi, r'$\pi$'),
    ]

plot.yticks = plot.xticks
plot.zticks = [-4, -2, 0, 2, 4]

for epsilon in np.linspace(-4 * t, 4 * t, 11):
    if epsilon >= 0:
        kxmin = np.arccos(epsilon / (-2 * t) + 1)
        kxmax = np.pi
    else:
        kxmin = 0
        kxmax = np.arccos(epsilon / (-2 * t) - 1)

    kx = np.linspace(kxmin, kxmax, 100)

    x = epsilon / (-2 * t) - np.cos(kx)

    x[np.where(x > +1)] = +1
    x[np.where(x < -1)] = -1

    ky = np.arccos(x)

    plot.line( kx,  ky, epsilon, thick=True)
    plot.line( kx, -ky, epsilon, thick=True)
    plot.line(-kx,  ky, epsilon, thick=True)
    plot.line(-kx, -ky, epsilon, thick=True)

plot.save('../results/square_lattice_dispersion.sl')

epsilon, dos = ebmb.square_dos(resolution=2001, t=1)

plot = storylines.Plot(4.666, 4.166, right=0.5, ymin=0.0, xmin=-4.5, xmax=4.5)

plot.xlabel = r'$\epsilon / t$'
plot.ylabel = r'$n(\epsilon) / t^{-1}$'

plot.line(epsilon, dos, yref=0,
    fill='orange!30', color='gray', line_join='round')

plot.save('../results/square_lattice_dos.sl', external=True)
plot.clear()
