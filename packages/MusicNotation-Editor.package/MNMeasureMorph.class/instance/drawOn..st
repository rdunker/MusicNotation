drawing
drawOn: aCanvas
	| canvas |
	self flag: #todo. "Remove background (only used for debugging)"
	aCanvas fillRectangle: self bounds fillStyle: Color veryVeryLightGray.
	
	canvas := aCanvas asBalloonCanvas
		aaLevel: 4;
		copyClipRect: self bounds.
	
	self drawMeasureLinesOn: canvas.