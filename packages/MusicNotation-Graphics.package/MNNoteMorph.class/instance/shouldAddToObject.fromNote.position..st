beams & bows
shouldAddToObject: aSymbol fromNote: aMNNoteMorph position: aNumber
	^ ((self note duration = aMNNoteMorph note duration) and: [self isPause not] and: [ (aMNNoteMorph ignoreObject: aSymbol) not] and: [aNumber > 1.0])