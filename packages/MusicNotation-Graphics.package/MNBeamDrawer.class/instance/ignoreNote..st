updating
ignoreNote: aMNNoteMorph
	(self isOuterNote: aMNNoteMorph) ifFalse: [self growStemsExcept: aMNNoteMorph].
	self notes remove: aMNNoteMorph.