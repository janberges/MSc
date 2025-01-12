\tikzsetnextfilename{rectangular-dos-limit}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-0.500, -0.500) rectangle +(3.000, 2.000);
	\draw [draw=none, fill=red!20] plot coordinates {
		(0.000, 0.000) (0.000, 1.083) (2.300, 1.083) (2.300, 0.000) };
	\draw [draw=red] plot coordinates {
		(0.000, 1.083) (2.300, 1.083) };
	\draw [line cap=butt]
		(0.000, 0) -- +(0, -0.070) node [below] {$-\infty$}
		(1.150, 0) -- +(0, -0.070) node [below] {$\mu_0 = 0$}
		(2.300, 0) -- +(0, -0.070) node [below] {$\infty$}
		(0, 0.000) -- +(-0.070, 0) node [rotate=90, above] {0}
		(0, 1.083) -- +(-0.070, 0) node [rotate=90, above] {$n(\mu_0)$};
	\draw [<->, line cap=butt]
		(2.400, 0) -- (0, 0) -- (0, 1.400);
\end{tikzpicture}%
