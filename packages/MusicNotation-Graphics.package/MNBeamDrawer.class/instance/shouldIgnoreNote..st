calculating
shouldIgnoreNote: aCollection
	^ aCollection size = 1 and: [self notes size > 2]