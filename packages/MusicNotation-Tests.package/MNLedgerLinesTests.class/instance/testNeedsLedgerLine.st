tests
testNeedsLedgerLine
	"Ignore while linting"
	| noteC4 noteC5 noteC6 offset |
	
	offset := 2.
	noteC4 := self createNoteWithDuration: (1/8) step: $c octave: 4.
	noteC5 := self createNoteWithDuration: (1/8) step: $c octave: 5.
	noteC6 := self createNoteWithDuration: (1/8) step: $c octave: 6.
	
	noteC4 noteLayout lines at: 1 put: ((noteC4 noteLayout lines first) - offset).
	noteC5 noteLayout lines at: 1 put: ((noteC5 noteLayout lines first) - offset).
	noteC6 noteLayout lines at: 1 put: ((noteC6 noteLayout lines first) - offset).
	
	self assert: true equals: (noteC4 noteLayout needsLedgerLines).
	self assert: false equals: (noteC5 noteLayout needsLedgerLines).
	self assert: true equals: (noteC6 noteLayout needsLedgerLines).