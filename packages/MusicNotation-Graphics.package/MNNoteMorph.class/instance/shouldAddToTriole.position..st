beams & bows
shouldAddToTriole: aMNNoteMorph position: aNumber
	^ ((self note duration = aMNNoteMorph note duration) and: [self isPause not] and: [ aMNNoteMorph ignoreTriole not] and: [aNumber > 1.0])