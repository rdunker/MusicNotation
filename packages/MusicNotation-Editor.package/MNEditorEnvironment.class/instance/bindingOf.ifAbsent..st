binding
bindingOf: aSymbol ifAbsent: aBlock
	^ self bindings associationAt: aSymbol ifAbsent: aBlock