binding
hasBindingOf: aSymbol
	Transcript showln: 'hasBindingOf: ', aSymbol.
	^ self bindings includesKey: aSymbol