tests
testStatementMapping
	| editor |
	editor := MNEditor new.
	editor updateContents: 'g4/8.g4/4.'.
	editor evaluateContentList.
	
	self assert: ((editor content statementMapping at: 1) allSatisfy: [ :note | note duration = (1/8)]).
	self assert:( (editor content statementMapping at: 2) allSatisfy: [ :note | note duration = (1/4)]).
	
	editor updateContents: 'g4/8 * 3.'.
	editor evaluateContentList.
	
	self assert: (editor content statementMapping at: 1) size = 3. 