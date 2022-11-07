calculating
calculateNotePosition: aMNNoteMorph
 	| positionOffset |
	
	aMNNoteMorph noteLayout lines first >= 0 
		ifTrue: [positionOffset := 10.]
		ifFalse: [positionOffset := -2.5].
	^ self calculateNotePosition: aMNNoteMorph offset: (self noteHeadWidth/2 + positionOffset)