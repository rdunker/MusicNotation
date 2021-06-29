testing
testIsDiagonal
	| c41 c42 c43 f4 d4 notes e4 |
	"Ignore while linting"

	c41 := self createC4.
	c42 := self createC4.
	c43 := self createC4.
	d4 := self createNoteWithDuration: 1/8 step: $d octave: 4.
	e4 := self createNoteWithDuration: 1/8 step: $e octave: 4.
	f4 := self createNoteWithDuration: 1/8 step: $f octave: 4.
	
	notes := OrderedCollection new add: c41; add: d4; add: e4; add: f4; yourself.
	self drawer: (MNBeamDrawer canvas: self hiddenCanvas notes: notes).
	
	self assert: self drawer isDiagonal.
	self assert: self drawer beamHeight = 4.
	
	notes := OrderedCollection new add: c41; add: c42; add: c43;  yourself.
	self drawer: (MNBeamDrawer canvas: self hiddenCanvas notes: notes).
	
	self assert: (self drawer isDiagonal not).
	self assert: (self drawer isDiagonalOrSamePitch).
	self assert: (self drawer beamHeight = 5).