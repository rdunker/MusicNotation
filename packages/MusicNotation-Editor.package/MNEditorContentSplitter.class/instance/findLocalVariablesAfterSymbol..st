local variables
findLocalVariablesAfterSymbol: aCharacter 
	self topOfStack = $|
			ifTrue: [ self findLocalVariablesBetweenPipesSymbol: aCharacter]
			ifFalse: 
				[aCharacter = $| 
					ifTrue: [self findLocalVariablesAfterFirstPipe]].