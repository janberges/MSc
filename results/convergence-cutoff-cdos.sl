\tikzsetnextfilename{convergence-cutoff-cdos}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(7.000, 7.000);
	\draw [color=blue, only marks, mark=*] plot coordinates {
		(0.000, 2.371) (0.112, 2.286) (0.224, 2.216) (0.337, 2.161)
		(0.449, 2.120) (0.561, 2.085) (0.673, 2.036) (0.786, 2.005)
		(0.898, 1.983) (1.010, 1.968) (1.122, 1.953) (1.235, 1.946)
		(1.347, 1.936) (1.459, 1.932) (1.571, 1.928) (1.684, 1.925)
		(1.796, 1.923) (1.908, 1.922) (2.020, 1.920) (2.133, 1.919)
		(2.245, 1.919) (2.357, 1.919) (2.469, 1.919) (2.582, 1.919)
		(2.694, 1.919) (2.806, 1.919) (2.918, 1.919) (3.031, 1.919)
		(3.143, 1.919) (3.255, 1.920) (3.367, 1.920) (3.480, 1.920)
		(3.592, 1.920) (3.704, 1.920) (3.816, 1.920) (3.929, 1.920)
		(4.041, 1.920) (4.153, 1.920) (4.265, 1.920) (4.378, 1.920)
		(4.490, 1.920) (4.602, 1.920) (4.714, 1.922) (4.827, 1.922)
		(4.939, 1.922) (5.051, 1.922) (5.163, 1.922) (5.276, 1.922)
		(5.388, 1.922) (5.500, 1.922) };
	\draw [color=red, only marks, mark=*] plot coordinates {
		(0.000, 3.217) (0.112, 3.218) (0.224, 3.222) (0.337, 3.231)
		(0.449, 3.247) (0.561, 3.267) (0.673, 3.314) (0.786, 3.338)
		(0.898, 3.388) (1.010, 3.437) (1.122, 3.482) (1.235, 3.546)
		(1.347, 3.604) (1.459, 3.656) (1.571, 3.703) (1.684, 3.760)
		(1.796, 3.810) (1.908, 3.866) (2.020, 3.926) (2.133, 3.977)
		(2.245, 4.030) (2.357, 4.084) (2.469, 4.132) (2.582, 4.183)
		(2.694, 4.234) (2.806, 4.282) (2.918, 4.331) (3.031, 4.379)
		(3.143, 4.427) (3.255, 4.473) (3.367, 4.519) (3.480, 4.563)
		(3.592, 4.609) (3.704, 4.652) (3.816, 4.696) (3.929, 4.738)
		(4.041, 4.779) (4.153, 4.820) (4.265, 4.861) (4.378, 4.900)
		(4.490, 4.941) (4.602, 4.979) (4.714, 5.018) (4.827, 5.055)
		(4.939, 5.093) (5.051, 5.130) (5.163, 5.166) (5.276, 5.202)
		(5.388, 5.238) (5.500, 5.272) };
	\draw [line cap=butt]
		(0.000, 0) -- +(0, -0.070) node [below] {$0.5$}
		(1.100, 0) -- +(0, -0.070) node [below] {$1$}
		(2.200, 0) -- +(0, -0.070) node [below] {$1.5$}
		(3.300, 0) -- +(0, -0.070) node [below] {$2$}
		(4.400, 0) -- +(0, -0.070) node [below] {$2.5$}
		(5.500, 0) -- +(0, -0.070) node [below] {$3$}
		(0, 1.500) -- +(-0.070, 0) node [rotate=90, above] {$0.07$}
		(0, 3.500) -- +(-0.070, 0) node [rotate=90, above] {$0.08$}
		(0, 5.500) -- +(-0.070, 0) node [rotate=90, above] {$0.09$};
	\draw [<->, line cap=butt]
		(5.600, 0) -- (0, 0) -- (0, 5.600);
	\node [below=\baselineskip] at (2.750, -0.070)
		{$\log_{10}(\omega_N / \omega \sub E)$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 2.750)
		{$T \sub c / \omega \sub E$};
	\node [align=center, above left=0.2cm] at (5.500, 0.000) {
		rescale? \\
		\begin{tikzpicture}[x=0.2cm, y=\baselineskip, mark indices={2}]
			\node [right] at (2, 0) {no};
			\draw [color=red, only marks, mark=*]
				plot coordinates { (0, 0) (1, 0) (2, 0) };
			\node [right] at (2, 1) {yes};
			\draw [color=blue, only marks, mark=*]
				plot coordinates { (0, 1) (1, 1) (2, 1) };
		\end{tikzpicture}
		};
\end{tikzpicture}%
