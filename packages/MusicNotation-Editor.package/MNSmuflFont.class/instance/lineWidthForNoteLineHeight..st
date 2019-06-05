accessing
lineWidthForNoteLineHeight: aNumber
	^ (self lineWidthUnits * aNumber / self noteLineHeightUnits) max: 1