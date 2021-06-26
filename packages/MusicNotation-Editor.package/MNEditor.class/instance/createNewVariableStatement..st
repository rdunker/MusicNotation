evaluating
createNewVariableStatement: aString
	| newVariableStatement |

	newVariableStatement := '(Dictionary new)'.
	self content localVariables keys do: 
		[ :variable | newVariableStatement := '(', newVariableStatement, ' at: ''', variable, ''' put: ', variable, '; yourself)' ].
	^ '^ ', newVariableStatement