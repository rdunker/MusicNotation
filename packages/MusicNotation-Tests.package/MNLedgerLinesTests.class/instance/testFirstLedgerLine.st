as yet unclassified
testFirstLedgerLine
	"Ignore while linting"
	| noteC4 noteC5 noteC6 offset |
	offset := 2.
	noteC4 := self createNoteWithDuration: (1/8) step: $c octave: 4.
	noteC5 := self createNoteWithDuration: (1/8) step: $c octave: 5.
	noteC6 := self createNoteWithDuration: (1/8) step: $c octave: 6.
	
	noteC4 noteLayout lines at: 1 put: ((noteC4 noteLayout lines at: 1) - offset).
	noteC5 noteLayout lines at: 1 put: ((noteC5 noteLayout lines at: 1) - offset).
	noteC6 noteLayout lines at: 1 put: ((noteC6 noteLayout lines at: 1) - offset).

	self assert: 3 equals: (noteC4 noteLayout firstLedgerLine).
	self assert: 0 equals: (noteC5 noteLayout firstLedgerLine).
	self assert: -4 equals: (noteC6 noteLayout firstLedgerLine).