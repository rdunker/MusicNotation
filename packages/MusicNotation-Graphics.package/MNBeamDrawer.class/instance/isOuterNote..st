calculating
isOuterNote: aMNNoteMorph
	^ aMNNoteMorph = self notes first or: [aMNNoteMorph = self notes last]