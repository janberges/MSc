\tikzsetnextfilename{mcmillan-1}
%
\begin{tikzpicture}[line cap=round, line join=round, mark size=0.05cm]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(7.000, 7.000);
	\draw [color=blue] plot coordinates {
		(0.000, 0.070) (5.500, 5.256) };
	\draw [color=blue, mark=*, only marks] plot coordinates {
		(0.921, 0.937) (1.045, 1.047) (1.192, 1.203) (1.481, 1.469)
		(2.115, 2.086) (3.067, 2.969) (5.124, 4.736) };
	\draw [color=red] plot coordinates {
		(0.000, -0.023) (5.500, 5.500) };
	\draw [color=red, mark=*, only marks] plot coordinates {
		(1.128, 1.106) (0.952, 0.936) (0.846, 0.831) (0.776, 0.759)
		(0.725, 0.704) (0.687, 0.661) };
	\draw [line cap=butt]
		(0.000, 0) -- +(0, -0.070) node [below] {$0$}
		(0.846, 0) -- +(0, -0.070) node [below] {$2$}
		(1.692, 0) -- +(0, -0.070) node [below] {$4$}
		(2.538, 0) -- +(0, -0.070) node [below] {$6$}
		(3.385, 0) -- +(0, -0.070) node [below] {$8$}
		(4.231, 0) -- +(0, -0.070) node [below] {$10$}
		(5.077, 0) -- +(0, -0.070) node [below] {$12$}
		(0, 0.000) -- +(-0.070, 0) node [rotate=90, above] {$0$}
		(0, 1.151) -- +(-0.070, 0) node [rotate=90, above] {$3$}
		(0, 2.302) -- +(-0.070, 0) node [rotate=90, above] {$6$}
		(0, 3.452) -- +(-0.070, 0) node [rotate=90, above] {$9$}
		(0, 4.603) -- +(-0.070, 0) node [rotate=90, above] {$12$};
	\draw [<->, line cap=butt]
		(5.600, 0) -- (0, 0) -- (0, 5.600);
	\node [below=\baselineskip] at (2.750, -0.070)
		{$x = (1 + \lambda) / \lambda$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 2.750)
		{$y = \ln(\av \omega / T \sub c) = \ln(A) + B x$};
	\node [align=center, below right=0.2cm] at (0.000, 5.500) {
		\begin{tikzpicture}[x=0.2cm, y=\baselineskip, mark indices={2}]
			\node [right] at (2, 0) {\name{Einstein}};
			\draw [color=red]
				plot coordinates { (0, 0) (1, 0) (2, 0) };
			\node [right] at (2, 1) {\name{McMillan}};
			\draw [color=blue]
				plot coordinates { (0, 1) (1, 1) (2, 1) };
		\end{tikzpicture}
		};
\end{tikzpicture}%
