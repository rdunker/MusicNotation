calculation
stemOffset: aMNNoteMorph

	aMNNoteMorph noteLayout lines first >= 0
		ifTrue: [	^ (aMNNoteMorph noteLayout lines first) - self maxHeight + 3.5];
		ifFalse: [	^ (aMNNoteMorph noteLayout lines first abs + self minHeight  + 3.5)].