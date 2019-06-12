drawing
drawAndMoveCodePoint: codePoint at: line
	self offset: 0 @ line * self noteLineHeight.
	self drawCodePoint: codePoint.
	self moveCodePoint: codePoint.