local variables
replaceLocalVariable: variableString in: statementString
	| newStatement |

	newStatement := statementString 
		copyWithRegex: (variableString, ' *\:=') 
		matchesReplacedWith: self placeHolder1.
	newStatement := newStatement 
		copyWithRegex: ('\|.*', variableString, '.*\|' )
		matchesReplacedWith: self placeHolder2.
	newStatement := newStatement
		copyWithRegex: variableString
		matchesReplacedWith: '(self localVariables at: ''', variableString, ''')'.
	newStatement := newStatement
		copyWithRegex: self placeHolder1
		matchesReplacedWith: (variableString, ' :=').
	newStatement := newStatement 
		copyWithRegex: self placeHolder2 
		matchesReplacedWith: self localVariablesBlock.
	^ newStatement