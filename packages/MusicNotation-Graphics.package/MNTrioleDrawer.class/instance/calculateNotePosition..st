calculating
calculateNotePosition: aMNNoteMorph
 	| positionOffset |
	
	aMNNoteMorph noteLayout lines first >= 0 
		ifTrue: [positionOffset := 10.]
		ifFalse: [positionOffset := -2.5].
	^ (aMNNoteMorph position x + (self noteHeadWith/2) + positionOffset @ ((aMNNoteMorph center y) + (self noteHeight: aMNNoteMorph)))