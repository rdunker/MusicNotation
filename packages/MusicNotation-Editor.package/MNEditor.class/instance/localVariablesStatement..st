statements
localVariablesStatement: aString
	^ self addVariableStatements: (self content localVariablesStatement: aString)