parsing
readNumber
	self skipSeperatorSequence.
	^ self path nextFloat.