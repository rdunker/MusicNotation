testing
isSingleCallTo: aSymbol with: aValue
	^ (self isCallTo: aSymbol with: aValue)
		and: [ self isDone ]