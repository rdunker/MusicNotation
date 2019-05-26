drawing
drawRestWith: aDrawer
	| line |
	line := (self notehead = 16rE4E3) asInteger negated.
	aDrawer drawCodePoint: self notehead at: line.
	aDrawer moveCodePoint: self notehead.