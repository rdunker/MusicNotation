calculation
stemOffset: aMNNoteMorph
	| offset |
	
	offset := aMNNoteMorph noteLayout lines first abs + 3.5.
	aMNNoteMorph noteLayout lines first >= 0
		ifTrue: [	^ offset - self maxHeight];
		ifFalse: [	^ offset + self minHeight].