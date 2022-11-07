calculating
stemOffset: aMNNoteMorph
	| offset |
	
	offset := aMNNoteMorph noteLayout lines first abs + aMNNoteMorph noteLayout stemLengthFactor.
	aMNNoteMorph noteLayout lines first >= 0
		ifTrue: [	^ offset - self maxHeight];
		ifFalse: [^ offset + self minHeight].