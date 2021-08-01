drawing
drawOn: aCanvas
	| balloonCanvas |
	balloonCanvas := aCanvas asBalloonCanvas
		aaLevel: self aaLevel;
		copyClipRect: self bounds.
	
	self drawMeasureLinesOn: balloonCanvas.