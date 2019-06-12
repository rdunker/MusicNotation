parsing
skipSeperatorSequence
	self path skipSeparatorsAndPeekNext == $,
		ifTrue: [ self path next; skipSeparators ].