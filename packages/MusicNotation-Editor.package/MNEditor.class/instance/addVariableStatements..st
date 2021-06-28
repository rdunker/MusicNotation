statements
addVariableStatements: aString
	^ self addNewVariableStatement: (self addVariableStatement: aString)