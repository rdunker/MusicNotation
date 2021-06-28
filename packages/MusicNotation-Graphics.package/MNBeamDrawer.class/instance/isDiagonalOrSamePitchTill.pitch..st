calculation
isDiagonalOrSamePitchTill: aMNNoteMorph pitch: aFloat 
	| previousNote |
	
	previousNote := self notes before: aMNNoteMorph ifAbsent: [^ true].
		
	((aMNNoteMorph noteLayout noteHeight - previousNote noteLayout noteHeight) = aFloat)
		ifTrue: [^ (self isDiagonalOrSamePitchTill: previousNote pitch: aFloat)];
		ifFalse: [^ false].
		
	^ true