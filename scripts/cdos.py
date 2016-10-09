#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

def lorentz(x, s):
    return s / (s ** 2 + x ** 2) / np.pi

epsilon, dos = ebmb.square_dos(resolution=2001, t=1)
epsilon_cdos = np.linspace(-6, 6, 3001)

mu = -2.0
cdos = dos[np.argmin(abs(epsilon - mu))]

plot = storylines.Plot(6.75, 5.0, right=0.5, ymin=0, yspacing=1.5)

plot.xlabel = r'$\epsilon$'
plot.ylabel = r'$n(\epsilon) / t^{-1}$'

plot.xticks = [(-4, '$-4 t$'), (mu, '$\mu_0$'), 0, (2, '$2 t$'), (4, '$4 t$')]

style = dict(yref=0, line_join='round', fill_opacity=0.5)

for i, omega in enumerate([1.0, 0.1], 1):
    exact = lorentz(epsilon      - mu, omega) * dos / cdos
    about = lorentz(epsilon_cdos - mu, omega)

    plot.line(epsilon,        dos, fill='black!20', **style)
    plot.line(epsilon,      exact, fill='red',      **style)
    plot.line(epsilon_cdos, about, fill='yellow',   **style)

    plot.save('../results/cdos%d.sl' % i, external=True)
    plot.clear()
