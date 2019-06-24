accessing
createNote: aNumber
	^ (super createNote: aNumber)
		addPitch: self createPitch;
		yourself