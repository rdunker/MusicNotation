binding
hasBindingThatBeginsWith: aString
	self bindings associationsDo: [ :each |
		(each key beginsWith: aString)
			ifTrue: [^ true ]].
	^ false