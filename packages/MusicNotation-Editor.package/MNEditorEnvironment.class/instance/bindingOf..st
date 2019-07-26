binding
bindingOf: aSymbol
	^ (aSymbol first isUppercase)
		ifTrue: [ (CurrentEnvironment == self)
			ifTrue: nil
			ifFalse: [ CurrentEnvironment bindingOf: aSymbol ]]
		ifFalse: [
			self bindingOf: aSymbol
				ifAbsent: [ self bindings add: aSymbol asSymbol => nil ]]