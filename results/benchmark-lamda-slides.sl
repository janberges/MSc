\tikzsetnextfilename{benchmark-lamda-slides}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(4.500, 4.500);
	\draw [color=cyan, thick] plot coordinates {
		(0.000, 0.016) (0.103, 0.084) (0.207, 0.169) (0.310, 0.267)
		(0.414, 0.374) (0.517, 0.487) (0.621, 0.605) (0.931, 0.967)
		(1.138, 1.205) (1.345, 1.433) (1.552, 1.650) (1.759, 1.856)
		(1.862, 1.955) (1.966, 2.051) (2.172, 2.235) (2.276, 2.324)
		(2.483, 2.494) (2.586, 2.577) (2.793, 2.735) (3.000, 2.886) };
	\draw [color=orange, thick] plot coordinates {
		(0.000, 0.042) (0.103, 0.094) (0.207, 0.189) (0.310, 0.292)
		(0.414, 0.405) (0.517, 0.522) (1.034, 1.143) (1.241, 1.383)
		(1.345, 1.500) (1.552, 1.723) (1.759, 1.935) (1.966, 2.134)
		(2.069, 2.231) (2.276, 2.416) (2.586, 2.678) (2.793, 2.842)
		(2.897, 2.919) (3.000, 3.000) };
	\draw [thick] plot coordinates {
		(0.000, 0.024) (0.103, 0.097) (0.207, 0.186) (0.310, 0.287)
		(0.414, 0.396) (0.621, 0.627) (0.931, 0.976) (1.138, 1.199)
		(1.241, 1.305) (1.345, 1.408) (1.448, 1.508) (1.552, 1.604)
		(1.655, 1.697) (1.759, 1.786) (1.862, 1.872) (1.966, 1.954)
		(2.069, 2.034) (2.172, 2.110) (2.276, 2.184) (2.379, 2.254)
		(2.483, 2.322) (2.586, 2.388) (2.793, 2.512) (3.000, 2.627) };
	\draw [very thick, loosely dotted] plot coordinates {
		(0.000, 0.000) (0.103, 0.064) (0.207, 0.146) (0.310, 0.243)
		(0.414, 0.350) (0.517, 0.466) (0.724, 0.709) (1.034, 1.079)
		(1.241, 1.317) (1.345, 1.431) (1.448, 1.543) (1.552, 1.651)
		(1.655, 1.756) (1.759, 1.857) (1.862, 1.955) (1.966, 2.050)
		(2.069, 2.141) (2.172, 2.230) (2.276, 2.315) (2.379, 2.397)
		(2.483, 2.477) (2.586, 2.553) (2.690, 2.627) (2.793, 2.699)
		(3.000, 2.834) };
	\draw [line cap=butt]
		(0.000, 0) -- +(0, -0.070) node [below] {$0.5$}
		(1.000, 0) -- +(0, -0.070) node [below] {$1$}
		(2.000, 0) -- +(0, -0.070) node [below] {$1.5$}
		(3.000, 0) -- +(0, -0.070) node [below] {$2$}
		(0, 0.833) -- +(-0.070, 0) node [rotate=90, above] {$10$}
		(0, 1.746) -- +(-0.070, 0) node [rotate=90, above] {$20$}
		(0, 2.658) -- +(-0.070, 0) node [rotate=90, above] {$30$};
	\draw [<->, line cap=butt]
		(3.100, 0) -- (0, 0) -- (0, 3.100);
	\node [below=\baselineskip] at (1.500, -0.070)
		{$\lambda$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 1.500)
		{$T \sub c / \unit K$};
\end{tikzpicture}%