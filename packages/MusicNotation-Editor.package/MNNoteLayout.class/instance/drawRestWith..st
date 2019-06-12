drawing
drawRestWith: aDrawer
	| line |
	"The whole rest needs to be drawn one line above"
	"line := isWholeRest ifTrue: -1 ifFalse: 0"
	line := (self notehead = 16rE4E3) asInteger negated.
	aDrawer drawAndMoveCodePoint: self notehead at: line.