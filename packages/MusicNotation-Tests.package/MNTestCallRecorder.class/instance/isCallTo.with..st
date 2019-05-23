testing
isCallTo: aSymbol with: aValue
	^ self calls first arguments first == aValue
		and: [ self isCallTo: aSymbol ].