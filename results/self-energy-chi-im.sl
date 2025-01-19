\tikzsetnextfilename{self-energy-chi-im}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(7.000, 5.000);
	\draw [mark size=0.8pt, color=red!0.0!blue, only marks, mark=*] plot coordinates {
		(0.795, 0.000) (0.718, 0.022) (0.641, 0.062) (0.564, 0.116)
		(0.487, 0.178) (0.410, 0.247) (0.333, 0.319) (0.256, 0.393)
		(0.179, 0.469) (0.103, 0.545) (0.026, 0.621) };
	\draw [mark size=0.8pt, color=red!0.0!blue, only marks, mark=*] plot coordinates {
		(0.872, 0.000) (0.949, 0.022) (1.026, 0.062) (1.103, 0.116)
		(1.179, 0.178) (1.256, 0.247) (1.333, 0.319) (1.410, 0.393)
		(1.487, 0.469) (1.564, 0.545) (1.641, 0.621) (1.718, 0.697)
		(1.795, 0.773) (1.872, 0.850) (1.949, 0.925) (2.026, 1.001)
		(2.103, 1.076) (2.179, 1.151) (2.256, 1.225) (2.333, 1.299)
		(2.410, 1.373) (2.487, 1.446) (2.564, 1.518) (2.641, 1.590)
		(2.718, 1.662) (2.795, 1.732) (2.872, 1.803) (2.949, 1.872)
		(3.026, 1.942) (3.103, 2.010) (3.179, 2.078) (3.256, 2.145)
		(3.333, 2.212) (3.410, 2.278) (3.487, 2.344) (3.564, 2.408)
		(3.641, 2.473) (3.718, 2.536) (3.795, 2.599) (3.872, 2.661)
		(3.949, 2.723) (4.026, 2.784) (4.103, 2.844) (4.179, 2.904)
		(4.256, 2.963) (4.333, 3.021) (4.410, 3.079) (4.487, 3.136)
		(4.564, 3.192) (4.641, 3.248) (4.718, 3.304) (4.795, 3.358)
		(4.872, 3.412) (4.949, 3.466) };
	\draw [mark size=0.8pt, color=red!100.0!blue, only marks, mark=*] plot coordinates {
		(0.769, 0.001) (0.641, 0.059) (0.513, 0.155) (0.385, 0.270)
		(0.256, 0.393) (0.128, 0.519) (0.000, 0.646) };
	\draw [mark size=0.8pt, color=red!100.0!blue, only marks, mark=*] plot coordinates {
		(0.897, 0.001) (1.026, 0.059) (1.154, 0.155) (1.282, 0.270)
		(1.410, 0.393) (1.538, 0.519) (1.667, 0.646) (1.795, 0.773)
		(1.923, 0.900) (2.051, 1.025) (2.179, 1.150) (2.308, 1.274)
		(2.436, 1.396) (2.564, 1.517) (2.692, 1.637) (2.821, 1.755)
		(2.949, 1.872) (3.077, 1.987) (3.205, 2.100) (3.333, 2.211)
		(3.462, 2.321) (3.590, 2.429) (3.718, 2.535) (3.846, 2.640)
		(3.974, 2.742) (4.103, 2.843) (4.231, 2.942) (4.359, 3.039)
		(4.487, 3.135) (4.615, 3.229) (4.744, 3.321) (4.872, 3.411)
		(5.000, 3.500) };
	\shade [bottom color=blue, top color=red]
		(5.000, 0) rectangle (5.100, 3.500);
	\draw [line cap=butt]
		(0.833, 0) -- +(0, -0.070) node [below] {$0$}
		(1.947, 0) -- +(0, -0.070) node [below] {$4$}
		(3.061, 0) -- +(0, -0.070) node [below] {$8$}
		(4.174, 0) -- +(0, -0.070) node [below] {$12$}
		(0, 0.296) -- +(-0.070, 0) node [rotate=90, above] {$-18$}
		(0, 1.292) -- +(-0.070, 0) node [rotate=90, above] {$-16$}
		(0, 2.288) -- +(-0.070, 0) node [rotate=90, above] {$-14$}
		(0, 3.284) -- +(-0.070, 0) node [rotate=90, above] {$-12$};
	\node [rotate=90, below] at (5.100, 0.000) {$0.6$};
	\node [rotate=90, below] at (5.100, 1.750) {$0.8$};
	\node [rotate=90, below] at (5.100, 3.500) {$1$};
	\draw [->, line cap=butt]
		(5.100, 0) -- (0, 0) -- (0, 3.600);
	\node [below=\baselineskip] at (2.500, -0.070)
		{$\omega / \omega \sub E$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 1.750)
		{$\chi(\I \omega) / \unit{meV}$};
	\node [rotate=90, below=\baselineskip] at (5.100, 1.750)
		{$T / T \sub c$};
\end{tikzpicture}%