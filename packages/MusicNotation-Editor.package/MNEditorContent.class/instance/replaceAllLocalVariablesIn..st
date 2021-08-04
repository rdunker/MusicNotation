local variables
replaceAllLocalVariablesIn: aString
	| newStatement |
	
	newStatement := aString.
	self localVariables keys do: [ :variable | 
		newStatement := self replaceLocalVariable: variable in: newStatement].
	^ newStatement