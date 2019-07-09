binding
hasBindingThatBeginsWith: aString
	Transcript showln: 'hasBindingThatBeginsWith: ', aString.
	self bindings associationsDo: [ :each |
		(each key beginsWith: aString)
			ifTrue: [^ true ]].
	^ false