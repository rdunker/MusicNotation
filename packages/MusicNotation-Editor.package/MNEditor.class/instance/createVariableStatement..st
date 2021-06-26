evaluating
createVariableStatement: aString
	^ (self content localVariablesBlock), (self content localVariablesInitialization)