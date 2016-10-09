#!/usr/bin/env python

import storylines
import numpy as np
from scipy.special import psi

lamda0 = 1.00 # electron-phonon coupling
omegaE = 0.02 # Einstein frequency (eV)

kB = 8.61733e-5 # Boltzmann constant (eV/K)
T  = 1.0        # temperature (K)

domega = 2 * np.pi * kB * T # Matsubara step (eV)

nE = omegaE / domega

def Z(omega):
    if omega == 0:
        return 1 + lamda0 + 0j

    n = omega / domega

    return 1 + 1j / (2 * n) * lamda0 * (1 + 1j * nE * (
        + psi(0.5 + 1j * (nE - n)) - psi(1 + 1j * nE)
        - psi(0.5 - 1j * (nE + n)) + psi(1 - 1j * nE)
        ))

Z = np.vectorize(Z)

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


plot = storylines.Plot(7, 5, ymin=1)

plot.xlabel = r'$\omega / \omega \sub E$'
plot.ylabel = r'$Z(\I \omega)$'
plot.yticks = [1.0, 1.5, 2.0]

iomega = 1j * np.linspace(-3 * omegaE, 15 * omegaE, 1001)

plot.line(iomega.imag / omegaE, Z(iomega).real, line_width='2.5pt')

plot.save('../results/imaginary-axis.sl')


plot = storylines.Plot(7, 5, lower='red', upper='yellow', line_join='round')

plot.xlabel = r'$\omega / \omega \sub E$'
plot.ylabel = r'$Z(\omega)$'
plot.zlabel = r'$\omega \sub{max.} / \omega \sub E$'
plot.xticks = range(6)
plot.zticks = [0.5, 1.0, 1.5]

omega = np.linspace(0, 5 * omegaE, 1001)
Z_exact = Z(omega)

plot.line(omega / omegaE, Z_exact.imag, line_width='2.5pt', dotted=True)
plot.line(omega / omegaE, Z_exact.real, line_width='2.5pt', label='exact')

for n in plot.zticks:
    iomega = 1j * np.arange(domega / 2, n * omegaE, domega)
    Z_Pade = Pade(iomega, Z(iomega), omega)

    plot.line(omega / omegaE, Z_Pade.imag, n, line_width='1pt', dotted=True)
    plot.line(omega / omegaE, Z_Pade.real, n, line_width='1pt')

plot.line(line_width='1pt', dotted=False, label='Re')
plot.line(line_width='1pt', dotted=True,  label='Im')

plot.save('../results/real-axis.sl', external=True)
