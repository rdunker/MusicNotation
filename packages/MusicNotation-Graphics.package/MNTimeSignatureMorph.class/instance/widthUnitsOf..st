accessing
widthUnitsOf: anInteger
	| width |
	width := 0.
	self codePointsOf: anInteger reverseDo: [ :codePoint |
		width := width + (self font codePoint: codePoint) width ].
	^ width