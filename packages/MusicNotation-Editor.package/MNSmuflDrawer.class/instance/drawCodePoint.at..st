as yet unclassified
drawCodePoint: codePoint at: line
	self offset: 0 @ line * self noteLineHeight.
	self drawCodePoint: codePoint.