drawing
drawNumberWith: aDrawer For: aMNNote
		| xOffset yOffset |
		
		xOffset := 200.
		yOffset := (-300 * self noteMorph noteLineHeight)  + (((-1 * self stemDirection * 3.5 * 30 * self noteMorph noteLineHeight) - (-1 * self stemDirection * self noteHeight * 20 * self noteMorph noteLineHeight))).
		aDrawer moveDynamics: ( xOffset@yOffset ).
		aDrawer drawCodePoint: self number.