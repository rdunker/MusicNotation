drawing
drawNumberAt: aPoint codePoint: anInteger
	MNSmuflDrawer new
		canvas: self canvas;
		color: Color black;
		font: self startNote font;
		position: aPoint;
		noteLineHeight: self startNote noteLineHeight;
		drawCodePoint: anInteger.