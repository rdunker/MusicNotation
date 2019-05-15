accessing
soundSequence
	^ soundSequence ifNil: [
		soundSequence := SequentialSound new ]