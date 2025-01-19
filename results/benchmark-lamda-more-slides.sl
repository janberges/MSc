\tikzsetnextfilename{benchmark-lamda-more-slides}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(4.500, 4.500);
	\draw [color=cyan, thick] plot coordinates {
		(0.000, 0.005) (0.103, 0.216) (0.207, 0.468) (0.310, 0.688)
		(0.414, 0.873) (0.517, 1.033) (0.621, 1.174) (0.724, 1.301)
		(0.828, 1.417) (0.931, 1.525) (1.034, 1.626) (1.138, 1.720)
		(1.241, 1.810) (1.448, 1.978) (1.552, 2.055) (1.655, 2.130)
		(1.862, 2.275) (1.966, 2.343) (2.172, 2.472) (2.276, 2.534)
		(2.379, 2.599) (2.586, 2.716) (2.793, 2.827) (3.000, 2.934) };
	\draw [color=orange, thick] plot coordinates {
		(0.000, 0.014) (0.103, 0.230) (0.207, 0.490) (0.310, 0.716)
		(0.414, 0.908) (0.517, 1.073) (0.621, 1.219) (0.724, 1.354)
		(0.828, 1.476) (0.931, 1.587) (1.034, 1.694) (1.138, 1.797)
		(1.345, 1.984) (1.448, 2.067) (1.552, 2.147) (1.655, 2.222)
		(1.759, 2.305) (1.862, 2.374) (1.966, 2.441) (2.069, 2.505)
		(2.172, 2.566) (2.276, 2.640) (2.483, 2.752) (2.690, 2.856)
		(2.897, 2.954) (3.000, 3.000) };
	\draw [thick] plot coordinates {
		(0.000, 0.008) (0.103, 0.224) (0.207, 0.461) (0.310, 0.655)
		(0.414, 0.808) (0.517, 0.929) (0.621, 1.025) (0.724, 1.104)
		(0.828, 1.170) (0.931, 1.225) (1.034, 1.272) (1.138, 1.313)
		(1.241, 1.348) (1.345, 1.379) (1.448, 1.407) (1.552, 1.431)
		(1.655, 1.453) (1.862, 1.491) (2.069, 1.522) (2.276, 1.549)
		(2.586, 1.581) (2.897, 1.607) (3.000, 1.615) };
	\draw [very thick, loosely dotted] plot coordinates {
		(0.000, 0.000) (0.103, 0.210) (0.207, 0.467) (0.310, 0.688)
		(0.414, 0.865) (0.517, 1.007) (0.621, 1.122) (0.724, 1.217)
		(0.828, 1.296) (0.931, 1.363) (1.034, 1.420) (1.138, 1.470)
		(1.241, 1.513) (1.345, 1.551) (1.448, 1.585) (1.552, 1.615)
		(1.655, 1.642) (1.759, 1.666) (1.966, 1.709) (2.172, 1.744)
		(2.379, 1.774) (2.690, 1.812) (3.000, 1.842) };
	\draw [line cap=butt]
		(0.158, 0) -- +(0, -0.070) node [below] {$1$}
		(1.105, 0) -- +(0, -0.070) node [below] {$4$}
		(2.053, 0) -- +(0, -0.070) node [below] {$7$}
		(3.000, 0) -- +(0, -0.070) node [below] {$10$}
		(0, 0.892) -- +(-0.070, 0) node [rotate=90, above] {$30$}
		(0, 1.810) -- +(-0.070, 0) node [rotate=90, above] {$60$}
		(0, 2.728) -- +(-0.070, 0) node [rotate=90, above] {$90$};
	\draw [<->, line cap=butt]
		(3.100, 0) -- (0, 0) -- (0, 3.100);
	\node [below=\baselineskip] at (1.500, -0.070)
		{$\lambda$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 1.500)
		{$T \sub c / \unit K$};
\end{tikzpicture}%