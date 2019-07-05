accessing
rangeIn: aContext
	| context |
	context := aContext.
	[
		context ifNil: [ ^ 1 to: 0 ].
		context method isKindOf: MNCompiledMethod ]
		whileFalse: [ context := context sender ].
	^ [
		context method debuggerMap
			rangeForPC: context pc
			in: context method
			contextIsActiveContext: false ]
		
		on: UndeclaredVariableWarning
		do: [ :e | e resume: true ]