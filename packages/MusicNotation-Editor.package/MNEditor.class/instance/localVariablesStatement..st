evaluating
localVariablesStatement: aString
	^ self addVariableStatements: (self content localVariablesStatement: aString)