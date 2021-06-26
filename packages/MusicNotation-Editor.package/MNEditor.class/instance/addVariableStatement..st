evaluating
addVariableStatement: aString
	(aString includesSubstring: '|')
		ifTrue: [^ aString]
		ifFalse: [^ (self createVariableStatement: aString), aString].