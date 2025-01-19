\tikzsetnextfilename{energy-dos-slides}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(9.800, 2.700);
	\draw [color=teal, fill=teal!25] plot coordinates {
		(0.000, 0.000) (0.000, 0.171) (0.989, 0.195) (1.738, 0.220)
		(2.307, 0.246) (2.741, 0.273) (3.073, 0.300) (3.327, 0.328)
		(3.521, 0.357) (3.670, 0.386) (3.785, 0.415) (3.873, 0.445)
		(3.941, 0.475) (3.992, 0.506) (4.034, 0.539) (4.065, 0.573)
		(4.090, 0.611) (4.110, 0.655) (4.125, 0.706) (4.137, 0.775)
		(4.145, 0.881) (4.148, 1.000) (4.150, 1.200) (4.153, 0.925)
		(4.160, 0.806) (4.170, 0.730) (4.183, 0.675) (4.201, 0.627)
		(4.225, 0.587) (4.255, 0.550) (4.293, 0.517) (4.341, 0.485)
		(4.404, 0.454) (4.485, 0.424) (4.592, 0.395) (4.729, 0.366)
		(4.909, 0.337) (5.144, 0.309) (5.451, 0.281) (5.853, 0.254)
		(6.379, 0.227) (7.070, 0.202) (7.981, 0.177) (8.300, 0.171)
		(8.300, 0.000) };
	\draw [line cap=butt]
		(0.000, 0) -- +(0, -0.070) node [below] {$-1$}
		(2.075, 0) -- +(0, -0.070) node [below] {$-0.5$}
		(4.150, 0) -- +(0, -0.070) node [below] {$0$}
		(6.225, 0) -- +(0, -0.070) node [below] {$0.5$}
		(8.300, 0) -- +(0, -0.070) node [below] {$1$}
		(0, 0.000) -- +(-0.070, 0) node [rotate=90, above] {$0$}
		(0, 0.536) -- +(-0.070, 0) node [rotate=90, above] {$1$}
		(0, 1.072) -- +(-0.070, 0) node [rotate=90, above] {$2$};
	\draw [<->, line cap=butt]
		(8.400, 0) -- (0, 0) -- (0, 1.300);
	\node [below=\baselineskip] at (4.150, -0.070)
		{$\epsilon / \unit{eV}$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 0.600)
		{$n / \unit{eV^{-1}}$};
\end{tikzpicture}%