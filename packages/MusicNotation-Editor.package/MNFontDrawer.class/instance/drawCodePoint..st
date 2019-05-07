nil
drawCodePoint: anInteger
	| glyph |
	glyph := self font codePoint: anInteger.
	self path: glyph path.
	self drawCurrentPath.