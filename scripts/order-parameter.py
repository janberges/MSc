#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

para = {
    'file': 'order-parameter.dat',
    'tell': False,

    'error': 0.0001,

    'omegaE': 0.02,
    'lambda': 1.00,
    'muStar': 0.10,

    'cutoff': 15.0,

    'dos': 'order-parameter.dos',
    'n': 0.5,

    'measurable': True,
    }

print 'Calculating DOS..'

ebmb.square_dos(para['dos'], resolution=501)

print 'Calculating Tc..'

Tc = ebmb.get(program='critical', **para)

print 'Calculating order parameter..'

resolution = 801 # odd!
Nc = resolution // 2

T = np.linspace(0.1, 1.9, resolution)

order_parameter = np.empty(resolution)
measurable__gap = np.empty(resolution)
iteration_steps = np.empty(resolution)

for i, t in enumerate(T):
    results = ebmb.get(T=t * Tc, normal=i == Nc, **para)

    print 'T / Tc = %.5f [%d]' % (t, results['status'])

    order_parameter[i] = results['Delta'][0]
    measurable__gap[i] = results['Delta0']
    iteration_steps[i] = results['status']

order_parameter *= 1000
measurable__gap *= 1000
iteration_steps *= measurable__gap.max() / iteration_steps.max()

iteration_steps[Nc] = iteration_steps.max()
order_parameter[Nc] = 0
measurable__gap[Nc] = 0

plot = storylines.Plot(14, 7, right=0.5)

plot.xlabel = r'$T / T \sub c$'
plot.ylabel = r'$\Delta / \unit{meV}$'

plot.line(T, iteration_steps, yref=0, draw='none', fill='blue!25')

plot.line(line_cap='butt', line_width='6pt', color='blue!25',
    label='iter. (a.u.)')

plot.line(T[:Nc + 1], measurable__gap[:Nc + 1], thick=True, color='blue',
    label=r'$\Delta_0$')

plot.line(T[:Nc + 1], order_parameter[:Nc + 1], thick=True, color='black',
    label=r'$\Delta(\I \omega_0)$')

plot.save('../results/order-parameter.sl', external=True)

plot.lines[1]['label'] = 'iterations (a.u.)'
plot.lines[2]['label'] = r'$\Delta_0 = \Re[\Delta(\Delta_0)]$'

plot.lines[2]['options']['color'] = 'orange'

plot.width  = 9.8
plot.height = 4.0
plot.right  = 1.0
plot.margin = 0.0
plot.ymax   = 3.0

plot.save('../results/order-parameter-slides.sl', external=True)
