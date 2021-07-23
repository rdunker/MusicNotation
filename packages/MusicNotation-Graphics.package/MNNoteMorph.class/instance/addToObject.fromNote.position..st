beams & bows
addToObject: aSymbol fromNote: aMNNoteMorph position: aNumber
	aSymbol = #beam ifTrue: [self addToBeam: aMNNoteMorph position: aNumber].
	aSymbol = #triole ifTrue: [self addToTriole: aMNNoteMorph position: aNumber].