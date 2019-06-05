as yet unclassified
flexBase
	| widths |
	widths := self codePointsAndOffsets collect: [ :each |
		(self font codePoint: each first) width ].
	^ widths min * ((self font scaleFactorForNoteLineHeight: self noteLineHeight) x) + self noteLineHeight