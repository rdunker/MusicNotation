drawing
drawLedgerLine: anIndex With: aDrawer
	| index xPositionOffset |
	xPositionOffset := 10.
	index := anIndex.
	aDrawer canvas drawRectangle: ((((self note morph position x - xPositionOffset) @ (self note morph center y + (index * self note morph noteLineHeight))) rounded) extent: (28@1)) color: Color black borderWidth: 0 borderColor: nil.