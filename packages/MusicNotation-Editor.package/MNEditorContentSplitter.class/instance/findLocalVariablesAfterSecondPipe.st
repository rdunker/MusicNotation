local variables
findLocalVariablesAfterSecondPipe
	self localVariable notEmpty
		ifTrue: [self addLocalVariable: self localVariable].
	self waitingFor pop.
