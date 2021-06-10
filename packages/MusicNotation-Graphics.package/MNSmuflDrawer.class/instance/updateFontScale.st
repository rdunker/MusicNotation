accessing
updateFontScale
	self fontScale: (self font scaleFactorForNoteLineHeight: (self noteLineHeight ifNil: 1)).