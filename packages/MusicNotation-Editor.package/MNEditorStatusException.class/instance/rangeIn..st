accessing
rangeIn: aContext
	| context |
	context := self reduceContext: aContext.
	^ [ 	context method debuggerMap
			rangeForPC: context pc
			in: context method
			contextIsActiveContext: false ]
		
		on: UndeclaredVariableWarning
		do: [ :e | e resume: true ]