statements
addVariableStatement: aString
	(aString includesSubstring: '|')
		ifTrue: [^ aString]
		ifFalse: [^ self content localVariablesBlock, aString].