error handling
doesNotUnderstand: aMessage
	| selector |
	selector := aMessage selector.
	
	selector numArgs == 1 ifTrue: [
		self customProps at: selector asSymbol put: aMessage argument.
		^ self ].
	
	^ super doesNotUnderstand: aMessage