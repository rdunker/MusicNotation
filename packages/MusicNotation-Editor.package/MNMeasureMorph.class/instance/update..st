accessing
update: aSymbol
	super update: aSymbol.
	
	aSymbol == #parts
		ifTrue: [ self updateParts ].