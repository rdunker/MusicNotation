testing
testNotehead
	| c3 c6 |
	c3 := self createNoteWithDuration: (1/8) step: $c octave: 3.
	c6 := self createNoteWithDuration: (1/8) step: $c octave: 6.

	self assert: true equals: (c3 noteLayout rightNoteheads) isEmpty.
	self assert: false equals: (c6 noteLayout rightNoteheads) isEmpty.

	self assert: false equals: (c3 noteLayout leftNoteheads) isEmpty.
	self assert: true equals: (c6 noteLayout leftNoteheads) isEmpty.
