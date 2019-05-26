drawing
drawStemWith: aDrawer
	| end start |
	start := 0.2 * self stemDirection + self lines first.
	end := self lines last + self stemLength.
	aDrawer drawVLine: start to: end.