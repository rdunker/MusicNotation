drawing
drawStemWith: aDrawer
	| end start |
	start := self stemOffset + self lines first.
	end := self lines last + self stemLength.
	aDrawer drawVLine: start to: end.