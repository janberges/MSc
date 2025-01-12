\tikzsetnextfilename{order-parameters-animated-2to1-2}
%
\begin{tikzpicture}[mark size=0.05cm, line join=round, line cap=round]
	\draw [use as bounding box, draw=none]
		(-1.000, -1.000) rectangle +(9.800, 4.000);
	\draw [color=blue!33!white, thick] plot coordinates {
		(0.000, 1.123) (0.803, 1.119) (1.131, 1.112) (1.365, 1.102)
		(1.576, 1.086) (1.755, 1.067) (1.919, 1.043) (2.075, 1.015)
		(2.231, 0.980) (2.379, 0.940) (2.496, 0.902) (2.597, 0.864)
		(2.691, 0.825) (2.785, 0.781) (2.886, 0.725) (2.995, 0.655)
		(3.073, 0.595) (3.143, 0.534) (3.206, 0.469) (3.260, 0.401)
		(3.284, 0.369) (3.323, 0.304) (3.354, 0.237) (3.377, 0.169)
		(3.393, 0.101) (3.401, 0.030) (3.409, 0.000) (7.800, 0.000) };
	\draw [color=red!28.6!blue, dashed, thick] plot coordinates {
		(0.000, 2.500) (0.803, 2.496) (1.435, 2.488) (1.755, 2.483)
		(1.919, 2.479) (1.989, 2.476) (2.020, 2.476) (2.051, 2.475)
		(2.083, 2.474) (2.122, 2.472) (2.145, 2.472) (2.192, 2.470)
		(2.215, 2.470) (2.262, 2.467) (2.285, 2.467) (2.348, 2.463)
		(2.363, 2.464) (2.434, 2.459) (2.449, 2.460) (2.527, 2.454)
		(2.543, 2.454) (2.629, 2.448) (2.644, 2.448) (2.738, 2.440)
		(2.753, 2.440) (2.855, 2.430) (2.870, 2.431) (2.980, 2.419)
		(2.995, 2.419) (3.120, 2.404) (3.128, 2.405) (3.268, 2.385)
		(3.276, 2.386) (3.440, 2.360) (3.448, 2.361) (3.619, 2.329)
		(3.627, 2.330) (3.822, 2.287) (3.830, 2.288) (4.040, 2.235)
		(4.048, 2.233) (4.056, 2.233) (4.251, 2.175) (4.306, 2.158)
		(4.313, 2.158) (4.501, 2.092) (4.586, 2.058) (4.594, 2.059)
		(4.766, 1.986) (4.914, 1.915) (4.922, 1.916) (5.078, 1.833)
		(5.226, 1.746) (5.288, 1.707) (5.296, 1.707) (5.429, 1.616)
		(5.554, 1.522) (5.671, 1.424) (5.725, 1.374) (5.733, 1.374)
		(5.834, 1.274) (5.928, 1.171) (6.014, 1.066) (6.084, 0.969)
		(6.146, 0.872) (6.201, 0.776) (6.232, 0.714) (6.240, 0.714)
		(6.287, 0.608) (6.326, 0.502) (6.357, 0.397) (6.380, 0.293)
		(6.396, 0.195) (6.404, 0.119) (6.412, 0.000) (7.800, 0.000) };
	\draw [color=red!14.3!blue!33!white, thick] plot coordinates {
		(0.000, 1.124) (0.803, 1.120) (1.131, 1.113) (1.365, 1.103)
		(1.576, 1.087) (1.755, 1.068) (1.919, 1.045) (2.075, 1.017)
		(2.231, 0.982) (2.379, 0.942) (2.496, 0.904) (2.597, 0.867)
		(2.691, 0.828) (2.785, 0.784) (2.886, 0.729) (2.995, 0.659)
		(3.073, 0.601) (3.143, 0.541) (3.206, 0.478) (3.260, 0.413)
		(3.284, 0.384) (3.331, 0.311) (3.370, 0.237) (3.424, 0.113)
		(3.440, 0.085) (3.463, 0.060) (3.487, 0.045) (3.518, 0.033)
		(3.572, 0.023) (3.666, 0.015) (3.877, 0.008) (4.524, 0.004)
		(7.129, 0.000) (7.800, 0.000) };
	\draw [color=red!28.6!blue, thick] plot coordinates {
		(0.000, 1.126) (0.827, 1.122) (1.154, 1.115) (1.396, 1.103)
		(1.607, 1.087) (1.794, 1.066) (1.958, 1.041) (2.106, 1.013)
		(2.246, 0.981) (2.387, 0.943) (2.504, 0.906) (2.605, 0.868)
		(2.699, 0.830) (2.785, 0.790) (2.886, 0.736) (3.003, 0.663)
		(3.089, 0.599) (3.143, 0.555) (3.214, 0.487) (3.284, 0.410)
		(3.338, 0.337) (3.409, 0.229) (3.440, 0.180) (3.479, 0.132)
		(3.510, 0.103) (3.541, 0.084) (3.580, 0.067) (3.627, 0.054)
		(3.705, 0.041) (3.822, 0.030) (4.048, 0.020) (4.501, 0.012)
		(5.866, 0.004) (6.591, 0.000) (7.800, 0.000) };
	\shade [bottom color=blue, top color=red]
		(7.800, 0) rectangle (7.900, 2.500);
	\draw [line cap=butt]
		(1.190, 0) -- +(0, -0.070) node [below] {$10$}
		(2.512, 0) -- +(0, -0.070) node [below] {$20$}
		(3.834, 0) -- +(0, -0.070) node [below] {$30$}
		(5.156, 0) -- +(0, -0.070) node [below] {$40$}
		(6.478, 0) -- +(0, -0.070) node [below] {$50$}
		(7.800, 0) -- +(0, -0.070) node [below] {$60$}
		(0, 0.000) -- +(-0.070, 0) node [rotate=90, above] {$0$}
		(0, 0.470) -- +(-0.070, 0) node [rotate=90, above] {$2$}
		(0, 0.940) -- +(-0.070, 0) node [rotate=90, above] {$4$}
		(0, 1.409) -- +(-0.070, 0) node [rotate=90, above] {$6$}
		(0, 1.879) -- +(-0.070, 0) node [rotate=90, above] {$8$}
		(0, 2.349) -- +(-0.070, 0) node [rotate=90, above] {$10$};
	\node [rotate=90, below] at (7.900, 0.000) {$-\infty$};
	\node [rotate=90, below] at (7.900, 0.714) {$-3$};
	\node [rotate=90, below] at (7.900, 1.429) {$-2$};
	\node [rotate=90, below] at (7.900, 2.143) {$-1$};
	\draw [->, line cap=butt]
		(7.900, 0) -- (0, 0) -- (0, 2.600);
	\node [below=\baselineskip] at (3.900, -0.070)
		{$T / \unit K$};
	\node [rotate=90, above=\baselineskip] at (-0.070, 1.250)
		{$\Delta(\mathrm i \omega_0) / \unit{meV}$};
	\node [rotate=90, below=\baselineskip] at (7.900, 1.250)
		{$\log_{10} x$};
	\node [align=center, below left=0.2cm] at (7.800, 2.500) {
		\footnotesize $\vec \lambda = \begin{bmatrix} 1 & x \\ 0 & 2 \end{bmatrix}$ \\
		};
\end{tikzpicture}%
