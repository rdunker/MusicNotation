drawing
drawOn: aCanvas
	| balloonCanvas |
	balloonCanvas := aCanvas asBalloonCanvas
		aaLevel: 4;
		copyClipRect: self bounds.
	self submorphs do: [:morph | (morph isKindOf: MNNoteMorph) ifTrue: [morph ignoreBeam: false]].
	
	self drawMeasureLinesOn: balloonCanvas.