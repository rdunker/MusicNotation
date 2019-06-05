drawing
drawRestWith: aDrawer
	| line |
	line := (self notehead = 16rE4E3) asInteger negated.
	aDrawer drawAndMoveCodePoint: self notehead at: line.