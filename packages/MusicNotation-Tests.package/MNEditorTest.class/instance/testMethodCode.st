tests
testMethodCode
	| editor |
	
	editor := MNEditor new.
	editor updateContents: 'c4/8.'.
	self assert: (editor methodCodePrefix = ('DoIt', String cr)).
	self assert: (editor methodCode = ('DoIt', String cr, 'c4/8.')).
	self assert: ((editor statementMethodCode: 'Method not understood') = ('DoIt', String cr, 'Method not understood')).