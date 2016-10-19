#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

def Pade(z, u, x):
    n = len(z)

    c = np.empty((n, n), dtype=complex)
    c[0, :] = u

    for p in range(1, n):
       c[p, p:] = (c[p - 1, p - 1] - c[p - 1, p:]) \
           / ((z[p:] - z[p - 1]) * c[p - 1, p:])

    frac = np.empty(len(x), dtype=complex)
    frac[:] = 1

    for p in reversed(range(1, n)):
        frac = 1 + (c[p, p] * (x - z[p - 1])) / frac

    return c[0, 0] / frac

para = {
    'file': 'sidebar.dat',
    'tell': False,

    'omegaE': 0.02,
    'cutoff': 200,
    'lambda': 0.70,
    'muStar': 0.00,
    }

Tc = ebmb.get('critical', **para)

T = [0.6, 0.8, 0.9, 0.97]

n = len(T)
N = 500

Omega = []
Delta = []

for t in T:
    print 'T / Tc = %.1f' % t

    results = ebmb.get(T=t * Tc, **para)

    Omega.append(results['iomega'])
    Delta.append(results['Delta'])

omega = np.linspace(0.0, 0.2, N)
delta = np.empty((n, N))

for i in range(n):
    delta[i, :] = Pade(1j * Omega[i], Delta[i], 1j * omega).real

plot = storylines.Plot(
    axes=False,

    xscale=-1,
    yscale=-1,

    height=9.6,
    width=4.1,

    left=0,
    right=0.1,
    bottom=0,
    top=0,

    xmin=-1.1 * max(delta[:, 0]),

    lower='titleblue',
    upper='red',
    )

plot.line()

opacity = [25, 50, 75, 100]

for i in range(n):
    plot.line(delta[i, :], omega, xref=plot.xmin,
        draw='none', fill='titleblue!%d' % opacity[i])

for i in range(n):
    select = np.where(Omega[i] < omega[-1])

    plot.line(Delta[i][select], Omega[i][select], T[i], omit=False,
        mark='*', mark_size='0.5pt', only_marks=True)

plot.save('../results/sidebar.sl', external=True)
