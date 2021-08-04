local variables
replaceLocalVariable: variableString in: statementString
	| newStatement |

	newStatement := self replaceRegex: (variableString, ' *\:=') with: self placeHolder1 in: statementString.
	newStatement := self replaceRegex: ('\|.*', variableString, '.*\|' ) with: self placeHolder2 in: newStatement.
	newStatement := self replaceRegex: variableString with: '(self localVariables at: ''', variableString, ''')' in: newStatement.
	newStatement := self replaceRegex: self placeHolder1 with: (variableString, ' :=') in: newStatement.
	newStatement := self replaceRegex: self placeHolder2 with: self localVariablesBlock in: newStatement.
	^ newStatement