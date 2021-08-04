drawing
drawOn: aCanvas
	| balloonCanvas |
	balloonCanvas := aCanvas asBalloonCanvas
		aaLevel: self aaLevel;
		copyClipRect: self bounds.
	self submorphs do: [:morph | (morph isKindOf: MNNoteMorph) ifTrue: [morph ignoreBeam: false]].
	
	self drawMeasureLinesOn: balloonCanvas.