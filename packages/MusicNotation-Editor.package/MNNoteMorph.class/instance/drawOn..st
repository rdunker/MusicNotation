drawing
drawOn: aCanvas
	| canvas |
	self flag: #todo. "Remove background (only used for debugging)"
	aCanvas fillRectangle: self bounds fillStyle: Color veryVeryLightGray.
	
	canvas := aCanvas asBalloonCanvas
		aaLevel: 4;
		copyClipRect: self bounds.
	
	self flag: #todo. "Move measure lines to MNMeasureMorph"
	self drawMeasureLinesOn: canvas.
	
	MNSmuflDrawer new
		canvas: canvas;
		color: self color;
		font: self font;
		position: self leftCenter;
		noteLineHeight: self noteLineHeight;
		drawDrawable: self noteLayout.
	