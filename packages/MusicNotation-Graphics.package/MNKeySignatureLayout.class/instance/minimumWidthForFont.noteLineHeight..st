calculating
minimumWidthForFont: aFont noteLineHeight: aNumber
	| width |
	self updateIfNeeded.
	
	self accidentals ifEmpty: [ ^ 0 ].
	
	width := self widthUnitsOfAccidentalsForFont: aFont.
	width := width - aFont accidentalSpaceUnits.
	
	width := width * (aFont scaleFactorForNoteLineHeight: aNumber) x.
	^ width + aNumber