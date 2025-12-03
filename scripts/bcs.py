#!/usr/bin/env python

import storylines
import numpy as np

# solve BCS gap equation

kB = 8.61733e-5

N0 = 1.00
wD = 0.02

e, de = np.linspace(-wD, wD, 1000, retstep=True)
T     = np.linspace(1, 110, 500)
V     = np.linspace(1.0, 0.1, 10)
Delta = np.ones(len(T))

plot = storylines.Plot(14, 6, xmax=T[-1], xstep=10, ymin=0, ystep=5)

plot.xlabel = r'$T / \unit K$'
plot.ylabel = r'$\Delta / \unit{meV}$'
plot.zlabel = r'$V N(\epsilon)$'

for v in V:
    n0 = 0

    for i, t in enumerate(T):
        for n in range(10000):
            Delta0 = Delta[i]

            E = np.sqrt(e ** 2 + Delta[i] ** 2)
            Delta[i] *= v * N0 / 2 * sum(de * np.tanh(E / (2 * kB * t)) / E)

            if abs(Delta0 - Delta[i]) < 1e-10:
                print('%.3f %.3f' % (t, Delta[i]))
                break
        else:
            print('(not converged)')

        if n < n0:
            break

        n0 = n

    plot.line(T[:i + 1], 1000 * Delta[:i + 1], v, thick=True)

plot.save('../results/bcs.sl', external=True)
