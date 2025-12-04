\tikzsetnextfilename{asymptotes-1}
%
\begin{tikzpicture}[line cap=round, line join=round, mark size=0.05cm]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(7.000, 7.000);
	\draw [color=blue, mark=*, only marks] plot coordinates {
		(0.825, 2.901) (0.920, 2.930) (1.016, 2.960) (1.111, 2.991)
		(1.207, 3.023) (1.302, 3.057) (1.397, 3.091) (1.493, 3.125)
		(1.588, 3.161) (1.684, 3.197) (1.779, 3.234) (1.874, 3.271)
		(1.970, 3.309) (2.065, 3.347) (2.161, 3.386) (2.256, 3.425)
		(2.352, 3.464) (2.447, 3.504) (2.542, 3.544) (2.638, 3.584)
		(2.733, 3.624) (2.829, 3.665) (2.924, 3.706) (3.019, 3.747)
		(3.115, 3.789) (3.210, 3.830) (3.306, 3.872) (3.401, 3.914)
		(3.496, 3.956) (3.592, 3.998) (3.687, 4.041) (3.783, 4.083)
		(3.878, 4.126) (3.973, 4.169) (4.069, 4.212) (4.164, 4.255)
		(4.260, 4.298) (4.355, 4.342) (4.451, 4.385) (4.546, 4.429)
		(4.641, 4.472) (4.737, 4.516) (4.832, 4.560) (4.928, 4.604)
		(5.023, 4.648) (5.118, 4.692) (5.214, 4.736) (5.309, 4.780)
		(5.405, 4.825) (5.500, 4.869) };
	\draw [color=cyan, thick] plot coordinates {
		(0.000, 2.750) (5.500, 4.583) };
	\draw [color=magenta, thick] plot coordinates {
		(0.000, 2.750) (5.500, 2.750) };
	\draw [line cap=butt]
		(0.000, 0) -- +(0, -0.070) node [below] {$0$}
		(2.750, 0) -- +(0, -0.070) node [below] {$1$}
		(5.500, 0) -- +(0, -0.070) node [below] {$2$}
		(0, 0.000) -- +(-0.070, 0) node [rotate=90, above] {$-1$}
		(0, 2.750) -- +(-0.070, 0) node [rotate=90, above] {$0$}
		(0, 5.500) -- +(-0.070, 0) node [rotate=90, above] {$1$};
	\draw [<->, line cap=butt]
		(5.600, 0) -- (0, 0) -- (0, 5.600);
	\node [below=\baselineskip] at (2.750, -0.070)
		{$\lambda \sub{od.}$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 2.750)
		{$\lambda_\infty$};
	\node [align=center, above left=0.2cm] at (5.500, 0.000) {
		\begin{tikzpicture}[x=0.2cm, y=\baselineskip, mark indices={2}]
			\node [right] at (2, 0) {non-renormalized};
			\draw [color=magenta, thick]
				plot coordinates { (0, 0) (1, 0) (2, 0) };
			\node [right] at (2, 1) {cutoff-independent};
			\draw [color=cyan, thick]
				plot coordinates { (0, 1) (1, 1) (2, 1) };
			\node [right] at (2, 2) {exact};
			\draw [color=blue, mark=*, only marks]
				plot coordinates { (0, 2) (1, 2) (2, 2) };
		\end{tikzpicture}
		};
\end{tikzpicture}%
