\tikzsetnextfilename{energy-tc-slides}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(9.800, 2.700);
	\draw [color=purple, thick] plot coordinates {
		(8.300, 0.488) (8.275, 0.770) (8.267, 0.849) (8.250, 0.959)
		(8.242, 1.005) (8.225, 1.067) (8.209, 1.109) (8.192, 1.139)
		(8.167, 1.170) (8.151, 1.182) (8.126, 1.192) (8.093, 1.199)
		(8.043, 1.199) (7.935, 1.188) (7.752, 1.165) (7.619, 1.154)
		(7.354, 1.140) (6.491, 1.107) (6.092, 1.086) (5.760, 1.064)
		(5.428, 1.037) (4.831, 0.977) (4.764, 0.968) (4.698, 0.963)
		(4.631, 0.961) (4.532, 0.964) (4.490, 0.968) (4.482, 0.973)
		(4.432, 0.983) (4.382, 1.001) (4.341, 1.021) (4.258, 1.075)
		(4.241, 1.081) (4.233, 1.080) (4.225, 1.076) (4.216, 1.066)
		(4.208, 1.048) (4.200, 1.016) (4.192, 0.962) (4.183, 0.876)
		(4.175, 0.733) (4.167, 0.485) (4.158, 0.000) };
	\draw [color=purple, thick] plot coordinates {
		(0.000, 0.488) (0.025, 0.770) (0.033, 0.849) (0.050, 0.959)
		(0.058, 1.005) (0.075, 1.067) (0.091, 1.109) (0.108, 1.139)
		(0.133, 1.170) (0.149, 1.182) (0.174, 1.192) (0.208, 1.199)
		(0.257, 1.199) (0.365, 1.188) (0.548, 1.165) (0.681, 1.154)
		(0.946, 1.140) (1.809, 1.107) (2.208, 1.086) (2.540, 1.064)
		(2.872, 1.037) (3.469, 0.977) (3.536, 0.968) (3.602, 0.963)
		(3.669, 0.961) (3.768, 0.964) (3.810, 0.968) (3.818, 0.973)
		(3.868, 0.983) (3.918, 1.001) (3.959, 1.021) (4.042, 1.075)
		(4.059, 1.081) (4.067, 1.080) (4.075, 1.076) (4.084, 1.066)
		(4.092, 1.048) (4.100, 1.016) (4.109, 0.962) (4.117, 0.876)
		(4.125, 0.733) (4.133, 0.485) (4.142, 0.000) };
	\draw [line cap=butt]
		(0.000, 0) -- +(0, -0.070) node [below] {$-1$}
		(2.075, 0) -- +(0, -0.070) node [below] {$-0.5$}
		(4.150, 0) -- +(0, -0.070) node [below] {$0$}
		(6.225, 0) -- +(0, -0.070) node [below] {$0.5$}
		(8.300, 0) -- +(0, -0.070) node [below] {$1$}
		(0, 0.218) -- +(-0.070, 0) node [rotate=90, above] {$15$}
		(0, 0.952) -- +(-0.070, 0) node [rotate=90, above] {$17$};
	\draw [<->, line cap=butt]
		(8.400, 0) -- (0, 0) -- (0, 1.300);
	\node [below=\baselineskip] at (4.150, -0.070)
		{$\mu_0 / \unit{eV}$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 0.600)
		{$T \sub c / \unit K$};
\end{tikzpicture}%