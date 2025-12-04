\tikzsetnextfilename{benchmark-omegae}
%
\begin{tikzpicture}[line cap=round, line join=round, mark size=0.05cm]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(7.000, 7.000);
	\draw [color=blue] plot coordinates {
		(0.000, 0.017) (0.190, 0.196) (0.379, 0.367) (0.759, 0.717)
		(1.138, 1.061) (1.517, 1.411) (1.707, 1.579) (1.897, 1.756)
		(2.466, 2.279) (2.655, 2.449) (3.034, 2.801) (3.414, 3.144)
		(3.603, 3.320) (3.793, 3.490) (3.983, 3.664) (4.172, 3.843)
		(4.362, 4.014) (4.741, 4.362) (4.931, 4.532) (5.121, 4.705)
		(5.310, 4.881) (5.500, 5.054) };
	\draw [color=red] plot coordinates {
		(0.000, 0.117) (0.759, 0.846) (1.138, 1.218) (1.897, 1.949)
		(2.466, 2.505) (2.655, 2.693) (3.603, 3.618) (3.793, 3.809)
		(3.983, 3.992) (4.362, 4.367) (4.552, 4.558) (4.741, 4.740)
		(4.931, 4.933) (5.121, 5.123) (5.310, 5.317) (5.500, 5.500) };
	\draw [] plot coordinates {
		(0.000, 0.031) (5.500, 5.085) };
	\draw [dotted, thick] plot coordinates {
		(0.000, 0.000) (5.500, 4.994) };
	\draw [line cap=butt]
		(0.000, 0) -- +(0, -0.070) node [below] {$0.01$}
		(1.375, 0) -- +(0, -0.070) node [below] {$0.015$}
		(2.750, 0) -- +(0, -0.070) node [below] {$0.02$}
		(4.125, 0) -- +(0, -0.070) node [below] {$0.025$}
		(5.500, 0) -- +(0, -0.070) node [below] {$0.03$}
		(0, 0.766) -- +(-0.070, 0) node [rotate=90, above] {$8$}
		(0, 1.582) -- +(-0.070, 0) node [rotate=90, above] {$10$}
		(0, 2.398) -- +(-0.070, 0) node [rotate=90, above] {$12$}
		(0, 3.214) -- +(-0.070, 0) node [rotate=90, above] {$14$}
		(0, 4.029) -- +(-0.070, 0) node [rotate=90, above] {$16$}
		(0, 4.845) -- +(-0.070, 0) node [rotate=90, above] {$18$};
	\draw [<->, line cap=butt]
		(5.600, 0) -- (0, 0) -- (0, 5.600);
	\node [below=\baselineskip] at (2.750, -0.070)
		{$\omega \sub E / \unit{eV}$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 2.750)
		{$T \sub c / \unit K$};
	\node [align=center, above left=0.2cm] at (5.500, 0.000) {
		\begin{tikzpicture}[x=0.2cm, y=\baselineskip, mark indices={2}]
			\node [right] at (2, 0) {\name{Einstein}};
			\draw [dotted, thick]
				plot coordinates { (0, 0) (1, 0) (2, 0) };
			\node [right] at (2, 1) {\name{McMillan}};
			\draw []
				plot coordinates { (0, 1) (1, 1) (2, 1) };
			\node [right] at (2, 2) {square DOS};
			\draw [color=red]
				plot coordinates { (0, 2) (1, 2) (2, 2) };
			\node [right] at (2, 3) {const. DOS};
			\draw [color=blue]
				plot coordinates { (0, 3) (1, 3) (2, 3) };
		\end{tikzpicture}
		};
\end{tikzpicture}%
