\tikzsetnextfilename{mcmillan-2}
%
\begin{tikzpicture}[line cap=round, line join=round, mark size=0.05cm]
	\draw [use as bounding box, draw=none]
		(-1.200, -1.000) rectangle +(7.000, 7.000);
	\draw [color=blue] plot coordinates {
		(0.000, 1.570) (5.500, 4.880) };
	\draw [color=blue, mark=*, only marks] plot coordinates {
		(3.624, 3.584) (3.009, 3.503) (2.426, 3.202) (1.876, 3.046)
		(1.262, 2.532) (0.906, 2.137) (4.335, 3.977) (3.624, 3.796)
		(2.944, 3.433) (2.329, 3.019) (1.618, 2.494) (1.229, 2.233)
		(0.809, 1.293) (4.756, 4.348) (3.882, 3.880) };
	\draw [color=red] plot coordinates {
		(0.000, 1.570) (5.500, 5.500) };
	\draw [color=red, mark=*, only marks] plot coordinates {
		(1.941, 2.796) (1.941, 2.827) (1.941, 2.809) (1.941, 2.773)
		(1.941, 2.732) (2.588, 3.509) (2.588, 3.408) (2.588, 3.350)
		(2.588, 3.296) (2.588, 3.242) (3.235, 4.175) (3.235, 3.971)
		(3.235, 3.880) (3.235, 3.814) (3.235, 3.752) (3.882, 4.706)
		(3.882, 4.493) (3.882, 4.390) (3.882, 4.317) (3.882, 4.252)
		(4.529, 5.004) (4.529, 4.944) (4.529, 4.870) (4.529, 4.803)
		(4.529, 4.741) (5.176, 5.005) (5.176, 5.288) (5.176, 5.304)
		(5.176, 5.266) (5.176, 5.215) };
	\draw [line cap=butt]
		(0.000, 0) -- +(0, -0.070) node [below] {$0$}
		(0.971, 0) -- +(0, -0.070) node [below] {$0.3$}
		(1.941, 0) -- +(0, -0.070) node [below] {$0.6$}
		(2.912, 0) -- +(0, -0.070) node [below] {$0.9$}
		(3.882, 0) -- +(0, -0.070) node [below] {$1.2$}
		(4.853, 0) -- +(0, -0.070) node [below] {$1.5$}
		(0, 0.000) -- +(-0.070, 0) node [rotate=90, above] {$0.5$}
		(0, 1.570) -- +(-0.070, 0) node [rotate=90, above] {$1$}
		(0, 3.140) -- +(-0.070, 0) node [rotate=90, above] {$1.5$}
		(0, 4.711) -- +(-0.070, 0) node [rotate=90, above] {$2$};
	\draw [<->, line cap=butt]
		(5.600, 0) -- (0, 0) -- (0, 5.600);
	\node [below=\baselineskip] at (2.750, -0.070)
		{$x = \lambda$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 2.750)
		{$y = \big[ \lambda + \frac{A (1 + \lambda)}{\ln(B T \sub c / \av \omega)} \big] \big/ \mu^* = 1 + C x$};
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
