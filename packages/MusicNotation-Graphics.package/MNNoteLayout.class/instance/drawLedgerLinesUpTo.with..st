drawing
drawLedgerLinesUpTo: end with: aDrawer
	| width |
	end isZero ifTrue: [ ^ self ].
	width := aDrawer widthOfCodePoint: self notehead.
	3 * end sign to: end by: end sign do: [ :line |
		aDrawer drawHLine: line width: width ].