\tikzsetnextfilename{intra-intra}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(7.000, 7.000);
	\draw [color=orange, only marks, mark=*] plot coordinates {
		(0.000, 1.672) (0.183, 1.543) (0.367, 1.404) (0.550, 1.254)
		(0.733, 1.092) (0.917, 0.917) };
	\draw [color=orange, only marks, mark=*] plot coordinates {
		(1.672, 0.000) (1.543, 0.183) (1.404, 0.367) (1.254, 0.550)
		(1.092, 0.733) (0.917, 0.917) };
	\draw [color=orange] plot coordinates {
		(0.000, 1.672) (0.184, 1.542) (0.363, 1.407) (0.537, 1.266)
		(0.699, 1.124) (0.855, 0.977) (1.006, 0.825) (1.152, 0.668)
		(1.291, 0.506) (1.431, 0.332) (1.565, 0.152) (1.672, 0.000) };
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
		(0.000, 4.616) (0.183, 4.530) (0.367, 4.440) (0.550, 4.346)
		(0.733, 4.247) (0.917, 4.144) (1.100, 4.035) (1.283, 3.921)
		(1.467, 3.801) (1.650, 3.675) (1.833, 3.542) (2.017, 3.401)
		(2.200, 3.252) (2.383, 3.095) (2.567, 2.928) (2.750, 2.750) };
	\draw [color=red, only marks, mark=*] plot coordinates {
		(4.616, 0.000) (4.530, 0.183) (4.440, 0.367) (4.346, 0.550)
		(4.247, 0.733) (4.144, 0.917) (4.035, 1.100) (3.921, 1.283)
		(3.801, 1.467) (3.675, 1.650) (3.542, 1.833) (3.401, 2.017)
		(3.252, 2.200) (3.095, 2.383) (2.928, 2.567) (2.750, 2.750) };
	\draw [color=red] plot coordinates {
		(0.000, 4.616) (0.278, 4.484) (0.540, 4.351) (0.787, 4.217)
		(1.034, 4.074) (1.266, 3.932) (1.482, 3.791) (1.698, 3.640)
		(1.899, 3.492) (2.100, 3.335) (2.285, 3.180) (2.470, 3.017)
		(2.656, 2.843) (2.825, 2.674) (2.995, 2.494) (3.165, 2.303)
		(3.320, 2.119) (3.474, 1.923) (3.628, 1.715) (3.767, 1.517)
		(3.906, 1.306) (4.045, 1.083) (4.184, 0.846) (4.323, 0.593)
		(4.447, 0.353) (4.570, 0.099) (4.616, 0.000) };
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
			\node [right] at (2, 0) {$\phantom 1 \mathllap{\tfrac 3 2}, 1, 1$};
			\draw [color=red, mark=*]
				plot coordinates { (0, 0) (1, 0) (2, 0) };
			\node [right] at (2, 1) {$1, 1, 1$};
			\draw [color=blue, mark=*]
				plot coordinates { (0, 1) (1, 1) (2, 1) };
			\node [right] at (2, 2) {$\phantom 1 \mathllap{\tfrac 1 2}, 1, 1$};
			\draw [color=orange, mark=*]
				plot coordinates { (0, 2) (1, 2) (2, 2) };
		\end{tikzpicture}
		};
\end{tikzpicture}%
