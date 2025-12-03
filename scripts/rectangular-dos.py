#!/usr/bin/env python

import storylines
import numpy as np

plot = storylines.Plot(3, 2, left=0.5, right=0.2, bottom=0.5, top=0.2,
    xmin=-1.2, xmax=1.2, ymin=0, ymax=1.2)

plot.xticks = [(-1, '$-E \sub F$'), (0, '$\mu_0 = 0$'), (1, '$E \sub F$')]
plot.yticks = [(0, 0), (1, '$n(\mu_0)$')]

plot.line([-1, 1], [1, 1], yref=0, color='red', fill='red!20')

plot.save('../results/rectangular-dos.sl', external=True)
plot.clear()

plot.clear()

plot.line([-1.2, 1.2], [1, 1], yref=0, draw='none', fill='red!20')
plot.line([-1.2, 1.2], [1, 1], draw='red')

plot.xticks[0] = (-1.2, '$-\infty$')
plot.xticks[2] = (1.2, '$\infty$')

plot.save('../results/rectangular-dos-limit.sl', external=True)
plot.clear()
