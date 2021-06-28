calculating
calculateNotePosition: aMNNoteMorph
	|positionOffset |
	
	positionOffset := 10.
	
 	^ ((aMNNoteMorph position x + positionOffset + (self accidentalsWidth: aMNNoteMorph)) @ (aMNNoteMorph center y + (self noteHeight: aMNNoteMorph))) rounded