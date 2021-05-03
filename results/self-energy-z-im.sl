\tikzsetnextfilename{self-energy-z-im}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(7.000, 5.000);
	\draw [mark size=0.8pt, color=red!0.0!blue, only marks, mark=*] plot coordinates {
		(0.795, 3.390) (0.718, 3.229) (0.641, 2.968) (0.564, 2.675)
		(0.487, 2.391) (0.410, 2.135) (0.333, 1.911) (0.256, 1.717)
		(0.179, 1.550) (0.103, 1.404) (0.026, 1.278) };
	\draw [mark size=0.8pt, color=red!0.0!blue, only marks, mark=*] plot coordinates {
		(0.872, 3.390) (0.949, 3.229) (1.026, 2.968) (1.103, 2.675)
		(1.179, 2.391) (1.256, 2.135) (1.333, 1.911) (1.410, 1.717)
		(1.487, 1.550) (1.564, 1.404) (1.641, 1.278) (1.718, 1.167)
		(1.795, 1.069) (1.872, 0.983) (1.949, 0.906) (2.026, 0.836)
		(2.103, 0.774) (2.179, 0.717) (2.256, 0.666) (2.333, 0.619)
		(2.410, 0.576) (2.487, 0.536) (2.564, 0.500) (2.641, 0.466)
		(2.718, 0.435) (2.795, 0.405) (2.872, 0.378) (2.949, 0.353)
		(3.026, 0.329) (3.103, 0.306) (3.179, 0.285) (3.256, 0.265)
		(3.333, 0.246) (3.410, 0.229) (3.487, 0.212) (3.564, 0.196)
		(3.641, 0.181) (3.718, 0.166) (3.795, 0.152) (3.872, 0.139)
		(3.949, 0.127) (4.026, 0.115) (4.103, 0.104) (4.179, 0.093)
		(4.256, 0.082) (4.333, 0.072) (4.410, 0.063) (4.487, 0.053)
		(4.564, 0.044) (4.641, 0.036) (4.718, 0.028) (4.795, 0.020)
		(4.872, 0.012) (4.949, 0.005) };
	\draw [mark size=0.8pt, color=red!100.0!blue, only marks, mark=*] plot coordinates {
		(0.769, 3.500) (0.641, 3.048) (0.513, 2.518) (0.385, 2.072)
		(0.256, 1.724) (0.128, 1.454) (0.000, 1.241) };
	\draw [mark size=0.8pt, color=red!100.0!blue, only marks, mark=*] plot coordinates {
		(0.897, 3.500) (1.026, 3.048) (1.154, 2.518) (1.282, 2.072)
		(1.410, 1.724) (1.538, 1.454) (1.667, 1.241) (1.795, 1.070)
		(1.923, 0.931) (2.051, 0.815) (2.179, 0.718) (2.308, 0.634)
		(2.436, 0.563) (2.564, 0.500) (2.692, 0.445) (2.821, 0.396)
		(2.949, 0.353) (3.077, 0.314) (3.205, 0.278) (3.333, 0.246)
		(3.462, 0.217) (3.590, 0.191) (3.718, 0.166) (3.846, 0.144)
		(3.974, 0.123) (4.103, 0.104) (4.231, 0.086) (4.359, 0.069)
		(4.487, 0.053) (4.615, 0.039) (4.744, 0.025) (4.872, 0.012)
		(5.000, 0.000) };
	\shade [bottom color=blue, top color=red]
		(5.000, 0) rectangle (5.100, 3.500);
	\draw [line cap=butt]
		(0.833, 0) -- +(0, -0.070) node [below] {$0$}
		(1.947, 0) -- +(0, -0.070) node [below] {$4$}
		(3.061, 0) -- +(0, -0.070) node [below] {$8$}
		(4.174, 0) -- +(0, -0.070) node [below] {$12$}
		(0, 0.452) -- +(-0.070, 0) node [rotate=90, above] {$1.2$}
		(0, 1.612) -- +(-0.070, 0) node [rotate=90, above] {$1.5$}
		(0, 2.773) -- +(-0.070, 0) node [rotate=90, above] {$1.8$};
	\node [rotate=90, below] at (5.100, 0.000) {$0.6$};
	\node [rotate=90, below] at (5.100, 1.750) {$0.8$};
	\node [rotate=90, below] at (5.100, 3.500) {$1$};
	\draw [->, line cap=butt]
		(5.100, 0) -- (0, 0) -- (0, 3.600);
	\node [below=\baselineskip] at (2.500, -0.070)
		{$\omega / \omega \sub E$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 1.750)
		{$Z(\I \omega)$};
	\node [rotate=90, below=\baselineskip] at (5.100, 1.750)
		{$T / T \sub c$};
\end{tikzpicture}%
