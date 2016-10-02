#!/usr/bin/env python

import ebmb
import storylines
import numpy as np

def linear_regression(x, y, m=None, b=None):
    n = len(x)

    x0 = sum(x) / n
    y0 = sum(y) / n

    def stdv(f=n):
        global dy

        dy = np.sqrt(sum((m * x[i] + b - y[i]) ** 2 for i in range(n)) / f)

    if m is not None and b is not None:
        stdv(n)

        dm = None
        db = None

    elif m is not None:
        b = y0 - m * x0

        stdv(n - 1)

        dm = None
        db = dy / np.sqrt(n)

    elif b is not None:
        xx = sum(x[i] ** 2 for i in range(n))

        m = sum(x[i] * (y[i] - b) for i in range(n)) / xx

        stdv(n - 1)

        dm = dy / np.sqrt(xx)
        db = None

    else:
        # Steiner translation theorem: <(x - <x>)^2> = <x^2> - <x>^2

        xy = sum((x[i] - x0) * (y[i] - y0) for i in range(n))
        xx = sum((x[i] - x0) ** 2          for i in range(n))

        m = xy / xx
        b = y0 - m * x0

        stdv(n - 2)

        dm = dy / np.sqrt(xx)
        db = dy * np.sqrt(n ** -1 + x0 ** 2 / xx)

    return dict(m=m, b=b, dy=dy, dm=dm, db=db)

# scatter plot style:

scatter = dict(omit=False, mark='*', only_marks=True)

# 1st fit (mu* = 0):

plot1 = storylines.Plot(7, 7, right=0.5, ymin=0, corner=2)

plot1.xlabel = r'$x = (1 + \lambda) / \lambda$'
plot1.ylabel = r'$y = \ln(\av \omega / T \sub c) = \ln(A) + B x$'

X1 = np.array([0.0, 13.0])

def x1(lamda):
    return (1 + lamda) / lamda

def y1(omega, Tc):
    return np.log(omega / Tc)

# 2nd fit (mu^* > 0):

plot2 = storylines.Plot(7, 7, left=1.2, right=0.3,
    ymin=0.5, ystep=0.5, corner=2)

plot2.xlabel = r'$x = \lambda$'
plot2.ylabel = r'$y = \big[ \lambda +' \
    r' \frac{A (1 + \lambda)}{\ln(B T \sub c / \av \omega)}' \
    r' \big] \big/ \mu^* = 1 + C x$'

X2 = np.array([0.0, 1.7])

def x2(lamda):
    return lamda

def y2(omega, lamda, muStar, A=1.20, B=1.04):
    return (lamda + B * (1 + lamda) / np.log(A * Tc / omega)) / muStar

# McMillan's results:

omega = 230.0

lamda, Tc = np.array([
    [0.85, 20.000],
    [0.68, 15.000],
    [0.55, 10.000],
    [0.40,  5.000],
    [0.25,  1.000],
    [0.16,  0.100],
    [0.09,  0.001],
    ]).T

plot1.line(X1, 1.04 * X1 + np.log(1.20), color='blue', label=r'\name{McMillan}')
plot1.line(x1(lamda), y1(omega, Tc), color='blue', **scatter)

lamda, muStar, Tc = np.array([
    [1.12, 0.088, 20.000],
    [0.93, 0.088, 15.000],
    [0.75, 0.088, 10.000],
    [0.58, 0.088,  5.000],
    [0.39, 0.088,  1.000],
    [0.28, 0.088,  0.100],
    [1.34, 0.149, 20.000],
    [1.12, 0.149, 15.000],
    [0.91, 0.149, 10.000],
    [0.72, 0.157,  5.000],
    [0.50, 0.157,  1.000],
    [0.38, 0.157,  0.100],
    [0.25, 0.157,  0.001],
    [1.47, 0.245, 15.000],
    [1.20, 0.245, 10.000],
    ]).T

plot2.line(X2, 1 + 0.62 * X2, color='blue', label=r'\name{McMillan}')
plot2.line(x2(lamda), y2(omega, lamda, muStar), color='blue', **scatter)

# Einstein spectrum:

kB = 8.61733e-5
omega = 0.02 / kB # ~ 232.1

lamda  = np.arange(0.6, 1.70, 0.20)
muStar = np.arange(0.0, 0.26, 0.05)

Tc = np.zeros((len(lamda), len(muStar)))

for i, l in enumerate(lamda):
    for j, m in enumerate(muStar):
        Tc[i, j] = ebmb.get('critical', file='mcmillan.dat',
            lamda=l, muStar=m, error=0.001, omegaE=0.02)

with open('mcmillan.dat', 'w') as table:
    table.write(r'''\begin{tabular}{*7r}
    \begin{tikzpicture}
        \useasboundingbox (0, 0) rectangle (0.5, 0.5);
        \draw (0, 0.5) --
            node[below left=-3pt] {$\lambda$}
            node[above right=-2pt] {$\mu^*$}
        (0.5, 0);
    \end{tikzpicture}''')

    table.write('''
        & ''' + ' & '.join('%6.3f' % m for m in muStar) + r' \\[1mm]')

    for i, l in enumerate(lamda):
        table.write('''
    %3.1f & ''' % l + ' & '.join('%6.3f' % tc for tc in Tc[i, :]))

        if i < len(lamda) - 1:
            table.write(r' \\')

    table.write(r'''
\end{tabular}
''')

x = x1(lamda)
y = y1(omega, Tc[:, 0])

line = linear_regression(x, y)

A = np.exp(line['b'])
B =        line['m']

dA = line['db'] * A
dB = line['dm']

plot1.line(X1, line['m'] * X1 + line['b'], color='red', label=r'\name{Einstein}')
plot1.line(x, y, color='red', **scatter)

lamda, muStar, Tc = np.array([[lamda[i], muStar[j], Tc[i, j]]
    for i in range(len(lamda)) for j in range(1, len(muStar))]).T

x = x2(lamda)
y = y2(omega, lamda, muStar, A, B)

line = linear_regression(x, y, b=1.0)

C  = line['m']
dC = line['dm']

plot2.line(X2, line['m'] * X2 + line['b'], color='red', label=r'\name{Einstein}')
plot2.line(x, y, color='red', **scatter)

# save figures:

plot1.save('mcmillan_1st.sl', external=True)
plot2.save('mcmillan_2nd.sl', external=True)

# print results:

for result in zip([A, B, C], [dA, dB, dC]):
    print '%4.2f +/- %4.2f' % result
