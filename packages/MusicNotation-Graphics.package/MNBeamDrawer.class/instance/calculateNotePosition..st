calculation
calculateNotePosition: aMNNoteMorph
 	^ (aMNNoteMorph center x + (self noteHeadWith/2) @ ((aMNNoteMorph center y) + (self noteHeight: aMNNoteMorph)))