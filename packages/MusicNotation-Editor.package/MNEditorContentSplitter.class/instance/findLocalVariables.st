local variables
findLocalVariables
	
	self localVariable: ''.
	self content do: [ :symbol | 
		((self topOfStack = $|) and: (symbol = $|))
				ifTrue: [self findLocalVariablesAfterSecondPipe. 
					^ self localVariables]
				ifFalse: [self findLocalVariablesAfterSymbol: symbol]].
	^ self localVariables