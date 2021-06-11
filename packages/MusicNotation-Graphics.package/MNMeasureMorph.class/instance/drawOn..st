drawing
drawOn: aCanvas
	| balloonCanvas |
	balloonCanvas := aCanvas asBalloonCanvas
		aaLevel: 4;
		copyClipRect: self bounds.
	
	self drawMeasureLinesOn: balloonCanvas.