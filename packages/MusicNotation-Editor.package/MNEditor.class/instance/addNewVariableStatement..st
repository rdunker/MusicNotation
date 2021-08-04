statements
addNewVariableStatement: aString
	self content localVariables notEmpty
		ifTrue: [^ (aString, (self createNewVariableStatement))]
		ifFalse: [^ aString].