calculation
calculateNotePosition: aMNNoteMorph
 	| positionOffset |
	
	positionOffset := 10.
	^ (aMNNoteMorph position x + (self noteHeadWith/2) + positionOffset @ ((aMNNoteMorph center y) + (self noteHeight: aMNNoteMorph)))