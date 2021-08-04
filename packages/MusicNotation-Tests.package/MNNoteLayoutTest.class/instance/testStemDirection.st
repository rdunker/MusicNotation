testing
testStemDirection
	| c3 c6 |
	c3 := self createNoteWithDuration: (1/8) step: $c octave: 3.
	c6 := self createNoteWithDuration: (1/8) step: $c octave: 6.

	self assert: false equals: (c3 noteLayout isStemDown).
	self assert: true equals: (c6 noteLayout isStemDown).

	self assert: -1 equals: (c3 noteLayout stemDirection).
	self assert: 1 equals: (c6 noteLayout stemDirection).
