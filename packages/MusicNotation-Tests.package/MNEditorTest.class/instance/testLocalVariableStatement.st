tests
testLocalVariableStatement
	| editor |
	
	editor := MNEditor new.
	editor updateContents: '| var | var := 1. var := var + 1.'.
	self assert: (editor localVariablesStatement: 'var := var + 1.') = '| var |var := (self localVariables at: ''var'') + 1.^ ((Dictionary new) at: ''var'' put: var; yourself)'.