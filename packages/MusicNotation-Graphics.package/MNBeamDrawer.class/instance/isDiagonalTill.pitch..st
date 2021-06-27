drawing
isDiagonalTill: aMNNoteMorph pitch: aFloat 
	| previousNote |
	
	previousNote := self notes before: aMNNoteMorph ifAbsent: nil.
	previousNote ifNil: [^ true].
		
	(aMNNoteMorph noteLayout lines first - previousNote noteLayout lines first = aFloat)
		ifTrue: [^ self isDiagonalTill: previousNote pitch: aFloat];
		ifFalse: [^ false].