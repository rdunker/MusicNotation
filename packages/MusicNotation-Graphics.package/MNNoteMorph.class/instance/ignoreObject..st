accessing
ignoreObject: aSymbol
	aSymbol = #beam ifTrue: [^ self ignoreBeam].
	aSymbol = #triole ifTrue: [^ self ignoreTriole].
