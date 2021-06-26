tests
testLocalVariablesStatement
	| content |
	content := MNEditorContent new.
	content updateContents: '|var| var := var + 1. var := var + 2'.
	self assert: (content localVariablesStatement: '| var | var := var + 1.') = '| var | var := (self localVariables at: ''var'') + 1.'.
	
	content updateContents: '|var1 var2 | var1 := var2 + 1. var2 := var2 + 2'.
	self assert: (content localVariablesStatement: '|var1 var2 | var1 := var2 + 1. var2 := var2 + 2') = '| var1 var2 | var1 := (self localVariables at: ''var2'') + 1. var2 := (self localVariables at: ''var2'') + 2'.
	