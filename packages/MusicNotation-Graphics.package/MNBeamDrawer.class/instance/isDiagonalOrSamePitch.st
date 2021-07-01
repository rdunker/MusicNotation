calculating
isDiagonalOrSamePitch
	| previousNote |
	
	previousNote := self notes after: self startNote.
	
	^ self isDiagonalOrSamePitchTill: previousNote pitch: (self startNote noteLayout noteHeight - previousNote noteLayout noteHeight)
