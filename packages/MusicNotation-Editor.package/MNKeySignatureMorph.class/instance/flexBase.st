accessing
flexBase
	| width |
	width := self font noteLineHeightUnits.
	
	self keySignatureCodePointsDo: [ :codePoint :line |
		width := width + (self font codePoint: codePoint) width + self font accidentalSpaceUnits ].
	
	^ width * (self font scaleFactorForNoteLineHeight: self noteLineHeight) x