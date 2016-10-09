#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

bands = 2

settings = {
    'power': False,
    'rate': 0.5,
    'file': 'tc_test.dat',
    'error': 0.01,
    }

def lamda_eff_1(l):
    l_eff = 2 * l

    for i in range(len(l_eff)):
        l_eff[i, i] -= l[i, :].sum()

    return np.linalg.eigvals(l_eff).max()

def lamda_eff_2(l):
    return np.linalg.eigvals(l).max()

size = 500

Tc  = np.empty(size)
Tc1 = np.empty(size)
Tc2 = np.empty(size)

for n in range(size):
    while True:
        dos   = np.random.rand(bands)
        lamda = np.random.rand(bands, bands)

        if n > 2:
            for i in range(bands):
                for j in range(i + 1, bands):
                    lamda[i, j] = lamda[j, i] * dos[j] / dos[i]

        lamda1 = lamda_eff_1(lamda)
        lamda2 = lamda_eff_2(lamda)

        if lamda2 > 0.5:
            break

    Tc [n] = ebmb.get('critical', lamda=lamda,  **settings)
    Tc1[n] = ebmb.get('critical', lamda=lamda1, **settings)
    Tc2[n] = ebmb.get('critical', lamda=lamda2, **settings)

lim = [0, max(Tc)]

scatter = dict(mark='*', only_marks=True, mark_size='1pt', omit=False)
line    = dict(thick=True, color='gray')

plot = storylines.Plot(7, 7, right=0.5, xstep=20, ystep=20)

plot.xticks = [
    (ebmb.get('critical', lamda=lamda, **settings), r'$\lambda = %d$' % lamda)
        for lamda in (1, 2)]

plot.xticks.extend([0, 10, 60])

plot.xlabel = r'$T \sub c / \unit K$'
plot.ylabel = r'$\widetilde T \sub c / \unit K$'

plot.line(lim, lim, **line)
plot.line(Tc, Tc1, color='cyan', **scatter)

plot.save('../results/tc_cutoff-independent.sl', external=True)

plot.clear()

plot.line(lim, lim, **line)
plot.line(Tc, Tc2, color='magenta', **scatter)

plot.save('../results/tc_non-renormalized.sl', external=True)

with open('../results/error1.dat', 'w') as dat:
    dat.write('%.1f%%\n' % (sum(abs(Tc - Tc1)) / size))

with open('../results/error2.dat', 'w') as dat:
    dat.write('%.1f%%\n' % (sum(abs(Tc - Tc2)) / size))
