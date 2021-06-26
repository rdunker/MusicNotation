calculation
stemOffset: aMNNoteMorph maxHeight: maxFloat minHeight: minFloat

	aMNNoteMorph noteLayout lines first >= 0
		ifTrue: [	^ (aMNNoteMorph noteLayout lines first) - (maxFloat) + 3.5];
		ifFalse: [	^ (aMNNoteMorph noteLayout lines first abs + minFloat  + 3.5)].