\tikzsetnextfilename{intra-inter}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(7.000, 7.000);
	\draw [color=orange, only marks, mark=*] plot coordinates {
		(0.000, 1.868) (0.183, 1.868) (0.367, 1.868) (0.550, 1.868)
		(0.733, 1.868) (0.917, 1.868) (1.100, 1.867) (1.283, 1.867)
		(1.467, 1.866) (1.650, 1.863) (1.833, 1.833) };
	\draw [color=orange, only marks, mark=*] plot coordinates {
		(1.868, 0.000) (1.868, 0.183) (1.868, 0.367) (1.868, 0.550)
		(1.868, 0.733) (1.868, 0.917) (1.867, 1.100) (1.867, 1.283)
		(1.866, 1.467) (1.863, 1.650) (1.833, 1.833) };
	\draw [color=orange] plot coordinates {
		(0.000, 1.868) (1.487, 1.866) (1.706, 1.861) (1.774, 1.855)
		(1.806, 1.849) (1.824, 1.840) (1.837, 1.829) (1.843, 1.820)
		(1.849, 1.804) (1.856, 1.773) (1.862, 1.687) (1.868, -0.000) };
	\draw [color=blue, only marks, mark=*] plot coordinates {
		(0.000, 3.178) (0.183, 3.077) (0.367, 2.970) (0.550, 2.856)
		(0.733, 2.736) (0.917, 2.609) (1.100, 2.474) (1.283, 2.329)
		(1.467, 2.175) (1.650, 2.010) (1.833, 1.833) };
	\draw [color=blue, only marks, mark=*] plot coordinates {
		(3.178, 0.000) (3.077, 0.183) (2.970, 0.367) (2.856, 0.550)
		(2.736, 0.733) (2.609, 0.917) (2.474, 1.100) (2.329, 1.283)
		(2.175, 1.467) (2.010, 1.650) (1.833, 1.833) };
	\draw [color=blue] plot coordinates {
		(0.000, 3.178) (0.234, 3.048) (0.457, 2.915) (0.670, 2.779)
		(0.872, 2.641) (1.063, 2.502) (1.254, 2.353) (1.435, 2.203)
		(1.605, 2.052) (1.775, 1.891) (1.934, 1.730) (2.094, 1.559)
		(2.243, 1.388) (2.392, 1.206) (2.540, 1.011) (2.679, 0.818)
		(2.817, 0.612) (2.944, 0.409) (3.072, 0.192) (3.178, 0.000) };
	\draw [color=red, only marks, mark=*] plot coordinates {
		(0.000, 3.666) (0.183, 3.483) (0.367, 3.300) (0.550, 3.117)
		(0.733, 2.933) (0.917, 2.750) (1.100, 2.567) (1.283, 2.383)
		(1.467, 2.200) (1.650, 2.017) (1.833, 1.833) };
	\draw [color=red, only marks, mark=*] plot coordinates {
		(3.666, 0.000) (3.483, 0.183) (3.300, 0.367) (3.117, 0.550)
		(2.933, 0.733) (2.750, 0.917) (2.567, 1.100) (2.383, 1.283)
		(2.200, 1.467) (2.017, 1.650) (1.833, 1.833) };
	\draw [color=red] plot coordinates {
		(0.000, 3.666) (3.666, -0.000) };
	\draw [line cap=butt]
		(0.000, 0) -- +(0, -0.070) node [below] {$0$}
		(1.833, 0) -- +(0, -0.070) node [below] {$1$}
		(3.667, 0) -- +(0, -0.070) node [below] {$2$}
		(5.500, 0) -- +(0, -0.070) node [below] {$3$}
		(0, 0.000) -- +(-0.070, 0) node [rotate=90, above] {$0$}
		(0, 1.833) -- +(-0.070, 0) node [rotate=90, above] {$1$}
		(0, 3.667) -- +(-0.070, 0) node [rotate=90, above] {$2$}
		(0, 5.500) -- +(-0.070, 0) node [rotate=90, above] {$3$};
	\draw [<->, line cap=butt]
		(5.600, 0) -- (0, 0) -- (0, 5.600);
	\node [below=\baselineskip] at (2.750, -0.070)
		{$\lambda_{1 1}$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 2.750)
		{$\lambda_{2 2}$};
	\node [align=center, below left=0.2cm] at (5.500, 5.500) {
		$\lambda \sub{d.}, \lambda_{1 2}, \lambda_{2 1}$ \\
		\begin{tikzpicture}[x=0.2cm, y=\baselineskip, mark indices={2}]
			\node [right] at (2, 0) {$1, 100, 100$};
			\draw [color=red, mark=*]
				plot coordinates { (0, 0) (1, 0) (2, 0) };
			\node [right] at (2, 1) {$1, 1, 1$};
			\draw [color=blue, mark=*]
				plot coordinates { (0, 1) (1, 1) (2, 1) };
			\node [right] at (2, 2) {$1, 0.01, 0.01$};
			\draw [color=orange, mark=*]
				plot coordinates { (0, 2) (1, 2) (2, 2) };
		\end{tikzpicture}
		};
\end{tikzpicture}%
