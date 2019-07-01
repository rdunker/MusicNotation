accessing
rangeIn: aSender
	^ [
		aSender method debuggerMap
			rangeForPC: aSender pc
			in: aSender method
			contextIsActiveContext: false ]
		
		on: UndeclaredVariableWarning
		do: [ :e | e resume true ]