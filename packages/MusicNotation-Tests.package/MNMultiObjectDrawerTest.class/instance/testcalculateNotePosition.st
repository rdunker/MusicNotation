testing
testcalculateNotePosition
	"Ignore while linting"
	| noteC4 noteD5 noteMorphC4 noteMorphD5 trioleDrawer positionC4 positionD5 |
	
	noteC4 := self createC4.
	noteD5 := self createD5.
	
	noteMorphC4 := MNNoteMorph note: noteC4.
	noteMorphD5 := MNNoteMorph note: noteD5.

	trioleDrawer := MNTrioleDrawer new.
	
	positionC4 := trioleDrawer calculateNotePosition: noteC4.
	positionD5 := trioleDrawer calculateNotePosition: noteD5.
	
	self assert: positionC4 equals: 10.0@115.0.
	self assert: positionD5 equals: 10.0@75.0.