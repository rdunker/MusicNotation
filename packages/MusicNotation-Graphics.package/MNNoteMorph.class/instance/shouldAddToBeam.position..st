beams & bows
shouldAddToBeam: aMNNoteMorph position: aNumber
	^ ((self note duration = aMNNoteMorph note duration) and: [self isPause not] and: [ aMNNoteMorph ignoreBeam not] and: [aNumber > 1.0])