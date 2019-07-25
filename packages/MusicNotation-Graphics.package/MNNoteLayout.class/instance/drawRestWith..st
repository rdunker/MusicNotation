drawing
drawRestWith: aDrawer
	| line |
	line := self isWholeRest asInteger negated.
	aDrawer drawAndMoveCodePoint: self notehead at: line.