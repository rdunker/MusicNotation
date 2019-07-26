binding
bindingOf: aSymbol forEnvironment: anEnvironment
	^ (anEnvironment == self)
		ifTrue: [ nil ]
		ifFalse: [ anEnvironment bindingOf: aSymbol ]