binding
bindingOf: aSymbol
	^ (aSymbol first isUppercase)
		ifTrue: [ self bindingOf: aSymbol forEnvironment: CurrentEnvironment ]
		ifFalse: [
			self bindingOf: aSymbol
				ifAbsent: [ self bindings add: aSymbol asSymbol => nil ]]