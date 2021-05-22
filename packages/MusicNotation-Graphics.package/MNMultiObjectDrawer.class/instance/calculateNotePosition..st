accessing
calculateNotePosition: aMNNoteMorph

	|positionOffset |
	positionOffset := 10.
	
 	^ ((aMNNoteMorph position x + positionOffset + (0.3 * aMNNoteMorph noteLayout accidentals size * (MNFont bravura accidentalSpaceUnits)) @ (aMNNoteMorph center y + (0.2 * aMNNoteMorph noteLayout accidentals size * (MNFont bravura accidentalSpaceUnits)) + (aMNNoteMorph noteLineHeight * 			((aMNNoteMorph noteLayout lines at: 1) + 1))))) rounded

