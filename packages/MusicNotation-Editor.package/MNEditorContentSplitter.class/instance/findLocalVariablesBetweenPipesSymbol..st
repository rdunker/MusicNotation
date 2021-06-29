local variables
findLocalVariablesBetweenPipesSymbol: aCharacter
	((aCharacter = $ ) and: (self localVariable notEmpty))
		ifTrue: [self findLocalVariablesAfterSpace].
	(((aCharacter = $ ) or: (aCharacter = $| )) not)
		ifTrue: [self findLocalVariablesBetweenPipesAfterSymbol: aCharacter].