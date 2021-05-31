accessing
calculateNotePosition: aMNNoteMorph

	|positionOffset |
	positionOffset := 10.
	
 	^ ((aMNNoteMorph position x + positionOffset @ (aMNNoteMorph center y + (aMNNoteMorph noteLineHeight * 			((aMNNoteMorph noteLayout lines at: 1) + 1))))) rounded

