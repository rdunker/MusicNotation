accessing
calculateNotePosition: aMNNoteMorph isUp: aBoolean

	|positionOffset |
	positionOffset := 10.
	
 	^ ((aMNNoteMorph position x + positionOffset + (self accidentalsWidth: aMNNoteMorph)) @ (aMNNoteMorph center y + (self noteHeight: aMNNoteMorph isUp: aBoolean))) rounded

