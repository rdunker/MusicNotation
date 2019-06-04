as yet unclassified
drawOn: aCanvas
	| canvas |
	self flag: #todo. "Remove background (only used for debugging)"
	aCanvas fillRectangle: self bounds fillStyle: Color veryVeryLightGray.
	
	canvas := aCanvas asBalloonCanvas
		aaLevel: 4;
		copyClipRect: self bounds.
	
	MNSmuflDrawer new
		canvas: canvas;
		color: self color;
		font: self font;
		position: self leftCenter;
		noteLineHeight: self noteLineHeight;
		drawCodePoint: self clefCodePoint