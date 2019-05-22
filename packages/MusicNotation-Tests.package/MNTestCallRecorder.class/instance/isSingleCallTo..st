testing
isSingleCallTo: aSymbol
	^ (self isCallTo: aSymbol)
		and: [ self isDone ]