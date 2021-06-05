calculation
noteHeight: aMNNoteMorph
	| lineOffset |
	
	lineOffset := -3.5.
	^ aMNNoteMorph noteLineHeight * ((aMNNoteMorph noteLayout lines at: 1) + lineOffset)
