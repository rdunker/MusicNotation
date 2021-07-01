calculating
isDiagonalOrSamePitchTill: aMNNoteMorph pitch: aFloat 
	| previousNote pitchDiff |
	
	previousNote := self notes after: aMNNoteMorph ifAbsent: [^ true].
	pitchDiff := aMNNoteMorph noteLayout noteHeight - previousNote noteLayout noteHeight.
	(pitchDiff = aFloat)
		ifTrue: [^ self isDiagonalOrSamePitchTill: previousNote pitch: aFloat];
		ifFalse: [^ false].
	^ true