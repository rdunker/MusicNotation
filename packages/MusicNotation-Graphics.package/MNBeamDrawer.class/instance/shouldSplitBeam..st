calculating
shouldSplitBeam: aCollection
	^ aCollection size = 2 and: [self notes size = 4]