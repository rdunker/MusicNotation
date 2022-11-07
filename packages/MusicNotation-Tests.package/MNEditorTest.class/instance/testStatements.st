tests
testStatements
	| editor |

	editor := MNEditor new.
	editor updateContents: '"Comment"c1/4.2 timesRepeat: [ {c4 . d4 . e4 . f4} / 4 ].'.
	self assert: ((editor statementAt: 1) = '"Comment"').
	self assert: ((editor statementAt: 2) = 'c1/4.').
	self assert: ((editor statementAt: 3) = '2 timesRepeat: [ {c4 . d4 . e4 . f4} / 4 ].').

	editor updateContents: '|var| var:=c1/4.2 timesRepeat: [var].'.
	self assert: ((editor localVariablesStatement: 'var:=c1/4.') = '| var |var :=c1/4.^ ((Dictionary new) at: ''var'' put: var; yourself)').