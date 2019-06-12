accessing
widthOfCodePoint: codePoint
	^ (self font codePoint: codePoint) width * (self font scaleFactorForNoteLineHeight: self noteLineHeight) x.