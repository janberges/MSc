\tikzsetnextfilename{benchmark-mustar-slides}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(4.500, 4.500);
	\draw [color=cyan, thick] plot coordinates {
		(0.000, 2.942) (0.310, 2.557) (0.621, 2.183) (0.828, 1.942)
		(1.034, 1.707) (1.241, 1.480) (1.448, 1.263) (1.552, 1.158)
		(1.759, 0.959) (1.862, 0.863) (1.966, 0.770) (2.069, 0.682)
		(2.172, 0.598) (2.379, 0.438) (2.483, 0.365) (2.586, 0.296)
		(2.690, 0.230) (2.793, 0.169) (2.897, 0.113) (3.000, 0.061) };
	\draw [color=orange, thick] plot coordinates {
		(0.000, 3.000) (0.310, 2.614) (0.621, 2.242) (0.828, 2.004)
		(0.931, 1.887) (1.138, 1.659) (1.345, 1.441) (1.552, 1.234)
		(1.759, 1.035) (1.966, 0.850) (2.172, 0.678) (2.276, 0.598)
		(2.379, 0.520) (2.483, 0.447) (2.586, 0.377) (2.690, 0.311)
		(2.793, 0.248) (2.897, 0.191) (3.000, 0.136) };
	\draw [thick] plot coordinates {
		(0.000, 2.646) (0.517, 2.138) (0.931, 1.740) (1.241, 1.450)
		(1.448, 1.263) (1.655, 1.081) (1.862, 0.907) (2.069, 0.740)
		(2.276, 0.583) (2.379, 0.508) (2.483, 0.436) (2.586, 0.367)
		(2.690, 0.300) (2.793, 0.238) (2.897, 0.178) (3.000, 0.122) };
	\draw [very thick, loosely dotted] plot coordinates {
		(0.000, 2.968) (0.414, 2.453) (0.724, 2.076) (0.931, 1.832)
		(1.138, 1.594) (1.345, 1.365) (1.552, 1.144) (1.655, 1.038)
		(1.759, 0.935) (1.862, 0.835) (1.966, 0.739) (2.069, 0.646)
		(2.172, 0.557) (2.276, 0.471) (2.379, 0.390) (2.483, 0.314)
		(2.586, 0.241) (2.690, 0.174) (2.793, 0.111) (2.897, 0.053)
		(3.000, 0.000) };
	\draw [line cap=butt]
		(0.000, 0) -- +(0, -0.070) node [below] {$0$}
		(1.000, 0) -- +(0, -0.070) node [below] {$0.1$}
		(2.000, 0) -- +(0, -0.070) node [below] {$0.2$}
		(3.000, 0) -- +(0, -0.070) node [below] {$0.3$}
		(0, 0.683) -- +(-0.070, 0) node [rotate=90, above] {$8$}
		(0, 1.655) -- +(-0.070, 0) node [rotate=90, above] {$16$}
		(0, 2.626) -- +(-0.070, 0) node [rotate=90, above] {$24$};
	\draw [<->, line cap=butt]
		(3.100, 0) -- (0, 0) -- (0, 3.100);
	\node [below=\baselineskip] at (1.500, -0.070)
		{$\mu^*$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 1.500)
		{$T \sub c / \unit K$};
\end{tikzpicture}%
