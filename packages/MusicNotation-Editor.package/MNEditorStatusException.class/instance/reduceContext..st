error handling
reduceContext: aContext
	| context |
	context := aContext.
	[ context ifNil: [ ^ 1 to: 0 ].
	  context method isKindOf: MNCompiledMethod ]
		whileFalse: [ context := context sender ].
	^ context