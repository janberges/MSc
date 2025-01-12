\tikzsetnextfilename{rectangular-dos}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-0.500, -0.500) rectangle +(3.000, 2.000);
	\draw [color=red, fill=red!20] plot coordinates {
		(0.192, 0.000) (0.192, 1.083) (2.108, 1.083) (2.108, 0.000) };
	\draw [line cap=butt]
		(0.192, 0) -- +(0, -0.070) node [below] {$-E \sub F$}
		(1.150, 0) -- +(0, -0.070) node [below] {$\mu_0 = 0$}
		(2.108, 0) -- +(0, -0.070) node [below] {$E \sub F$}
		(0, 0.000) -- +(-0.070, 0) node [rotate=90, above] {0}
		(0, 1.083) -- +(-0.070, 0) node [rotate=90, above] {$n(\mu_0)$};
	\draw [<->, line cap=butt]
		(2.400, 0) -- (0, 0) -- (0, 1.400);
\end{tikzpicture}%
