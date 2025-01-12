\tikzsetnextfilename{benchmark-omegae-slides}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(4.500, 4.500);
	\draw [color=cyan, thick] plot coordinates {
		(0.000, 0.009) (0.103, 0.107) (0.310, 0.296) (0.724, 0.674)
		(0.828, 0.770) (0.931, 0.861) (1.345, 1.243) (1.448, 1.336)
		(1.655, 1.528) (1.862, 1.715) (1.966, 1.811) (2.172, 1.998)
		(2.276, 2.096) (2.793, 2.566) (3.000, 2.757) };
	\draw [color=orange, thick] plot coordinates {
		(0.000, 0.064) (0.517, 0.562) (0.621, 0.664) (1.138, 1.164)
		(1.966, 1.974) (2.069, 2.077) (2.172, 2.177) (2.483, 2.486)
		(2.586, 2.586) (2.897, 2.900) (3.000, 3.000) };
	\draw [thick] plot coordinates {
		(0.000, 0.017) (3.000, 2.774) };
	\draw [very thick, loosely dotted] plot coordinates {
		(0.000, 0.000) (3.000, 2.724) };
	\draw [line cap=butt]
		(0.000, 0) -- +(0, -0.070) node [below] {$0.01$}
		(1.500, 0) -- +(0, -0.070) node [below] {$0.02$}
		(3.000, 0) -- +(0, -0.070) node [below] {$0.03$}
		(0, 0.418) -- +(-0.070, 0) node [rotate=90, above] {$8$}
		(0, 1.308) -- +(-0.070, 0) node [rotate=90, above] {$12$}
		(0, 2.198) -- +(-0.070, 0) node [rotate=90, above] {$16$};
	\draw [<->, line cap=butt]
		(3.100, 0) -- (0, 0) -- (0, 3.100);
	\node [below=\baselineskip] at (1.500, -0.070)
		{$\omega \sub E / \unit{eV}$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 1.500)
		{$T \sub c / \unit K$};
\end{tikzpicture}%
