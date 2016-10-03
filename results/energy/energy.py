#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

kB = 8.61733e-5

para = {
    'file': 'energy.dat',
    'tell': False,

    'error': 0.001,

    'omegaE': 0.02,
    'lambda': 1.00,
    'muStar': 0.10,

    'cutoff': 15.0,

    'dos': 'dos.in',
    }

print 'Calculating DOS..'

epsilon, dos = ebmb.square_dos(para['dos'], resolution=5001)

print 'Calculating Tc..'

Tc = ebmb.get(program='critical', **para)

print 'Calculating order parameter..'

N = 50

mu = np.empty(3 * N)

mu[0 * N:1 * N] = np.linspace(-1.0, -0.9, N, endpoint=False)
mu[1 * N:2 * N] = np.linspace(-0.9, -0.1, N, endpoint=False)
mu[2 * N:3 * N] = np.linspace(-0.1, +0.0, N, endpoint=False)

Tc  = np.empty(3 * N)
dmu = np.empty(3 * N)
chi = np.empty(3 * N)

for i, para['mu'] in enumerate(mu):
    print 'mu = %(mu).5f eV' % para

    para['T'] = ebmb.get('critical', **para)
    data = ebmb.get(normal=True, **para)

    Tc[i]  = para['T']
    dmu[i] = para['mu'] - data['mu']
    chi[i] = data['chi'][0]

width = 14
height = 3.6

# critical temperature:

plot = storylines.Plot(width, height, right=0.5, ystep=1)

plot.xlabel = r'$\mu_0 / \unit{eV}$'
plot.ylabel = r'$T \sub c / \unit K$'

for sgn in -1, +1:
    plot.line(sgn * mu, Tc, color='purple', thick=True)

plot.save('energy_tc.sl', external=True)

# energy shift:

plot = storylines.Plot(width, height, right=0.5, ystep=0.05)

plot.xlabel = r'$\mu_0 / \unit{eV}$'
plot.ylabel = r'$\textcolor{teal}{\chi(\I \omega_0) / \unit{eV}} \quad ' \
    r'\textcolor{purple}{(\mu_0 - \mu) / \unit{eV}}$'

for sgn in -1, +1:
    plot.line(sgn * mu, sgn * dmu, color='purple', thick=True)
    plot.line(sgn * mu, sgn * chi, color='teal',   thick=True)

plot.save('energy_shift.sl', external=True)

# density of states:

plot = storylines.Plot(width, height, right=0.5, ymin = 0, ystep=1)

plot.xlabel = r'$\epsilon / \unit{eV}$'
plot.ylabel = r'$n / \unit{eV^{-1}}$'

plot.line(epsilon, dos, yref=0, color='teal', fill='teal!25')

plot.save('energy_dos.sl', external=True)
