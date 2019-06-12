updating
update: aSymbol
	super update: aSymbol.
	
	aSymbol == #measures
		ifTrue: [ self updateMeasures ].