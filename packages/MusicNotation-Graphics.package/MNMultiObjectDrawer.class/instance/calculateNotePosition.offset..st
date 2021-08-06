calculating
calculateNotePosition: aMNNoteMorph offset: aFloat
 	^ (aMNNoteMorph position x + aFloat + (self accidentalsWidth: aMNNoteMorph)) @ (aMNNoteMorph center y + (self noteHeight: aMNNoteMorph))