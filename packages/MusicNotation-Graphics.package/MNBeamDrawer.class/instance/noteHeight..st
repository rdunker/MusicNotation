calculation
noteHeight: aMNNoteMorph
	| lineOffset |
	
	lineOffset := aMNNoteMorph noteLayout stemLength.
	^ aMNNoteMorph noteLineHeight * ((aMNNoteMorph noteLayout lines first) + lineOffset)