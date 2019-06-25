drawing
drawOn: aCanvas
	| canvas |
	canvas := aCanvas asBalloonCanvas
		aaLevel: 4;
		copyClipRect: self bounds.
	
	self drawMeasureLinesOn: canvas.