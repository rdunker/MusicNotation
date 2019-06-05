accessing
flexBase
	^ self noteLineHeight + (
		(self font scaleFactorForNoteLineHeight: self noteLineHeight) x * (
			(self topWidthUnits)
			max: (self bottomWidthUnits)))