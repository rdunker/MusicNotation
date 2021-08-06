calculating
noteHeight: aMNNoteMorph
	| lineOffset |
	
	lineOffset := 1.
	self bowDownwards ifFalse: [
		(self isStemUp: aMNNoteMorph) ifTrue: [
			lineOffset := -1 * aMNNoteMorph noteLayout stemLengthFactor]].
	(self isStemUp: aMNNoteMorph) ifFalse: [lineOffset := -1].

	^ aMNNoteMorph noteLineHeight * ((aMNNoteMorph noteLayout lines first) + lineOffset)
