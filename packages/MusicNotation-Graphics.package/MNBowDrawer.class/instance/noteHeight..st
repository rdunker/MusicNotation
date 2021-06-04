accessing
noteHeight: aMNNoteMorph

	| lineOffset |
	
	lineOffset := 1.

	self bowDownwards ifFalse: [
		(self isStemUp: aMNNoteMorph) ifTrue: [
			lineOffset := -3.5.
			]
		].
	(self isStemUp: aMNNoteMorph) ifFalse: [lineOffset := -1].

	^ aMNNoteMorph noteLineHeight * ((aMNNoteMorph noteLayout lines at: 1) + lineOffset)

