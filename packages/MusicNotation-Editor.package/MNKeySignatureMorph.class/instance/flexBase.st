as yet unclassified
flexBase
	^ (self keySignature detectSum: [ :each |
		(self font codePoint: each first) width + self font accidentalSpaceUnits ]
	) * (self font scaleFactorForNoteLineHeight: self noteLineHeight) x + self noteLineHeight