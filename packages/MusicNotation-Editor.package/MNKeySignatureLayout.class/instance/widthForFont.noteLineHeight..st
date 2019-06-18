calculating
widthForFont: aFont noteLineHeight: aNumber
	"Calculate the min width of the key signature"
	| width |
	self updateIfNeeded.
	
	self accidentals ifEmpty: [ ^ 0 ].
	
	width := self accidentals size - 1 * aFont accidentalSpaceUnits.
	self accidentalCodePointsDo: [ :line :codePoint |
		width := width + (aFont codePoint: codePoint) width ].
	
	width := width * (aFont scaleFactorForNoteLineHeight: aNumber) x.
	^ width + aNumber