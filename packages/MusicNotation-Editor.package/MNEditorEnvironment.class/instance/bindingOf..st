binding
bindingOf: aSymbol
	^ aSymbol first isUppercase
		ifTrue: [ CurrentEnvironment == self
			ifTrue: nil
			ifFalse: [ CurrentEnvironment bindingOf: aSymbol ]]
		ifFalse: [
			self bindingOf: aSymbol
				ifAbsent: [ bindings add: aSymbol asSymbol => nil ]]