drawing
drawNumberWith: aDrawer For: aMNNote
		| xOffset yOffset |
		
		xOffset := 200.
		yOffset := (-300 * self noteMorph noteLineHeight)  + (((-1 * (self stemLength) * 30 * self noteMorph noteLineHeight) - (-1 * self stemDirection * self noteHeight * 20 * self noteMorph noteLineHeight))).
		self stemDirection = 1 ifTrue: [yOffset := yOffset - 1000].
		aDrawer moveDynamics: ( xOffset@yOffset ).
		aDrawer drawCodePoint: self number.