testing
setupBasicBeamDrawer

	| c4 d4 e4 f4 notes |
	c4 := self createC4.
	d4 := self createNoteWithDuration: 1/8 step: $d octave: 4.
	e4 := self createNoteWithDuration: 1/8 step: $e octave: 4.
	f4 := self createNoteWithDuration: 1/8 step: $f octave: 4.
	
	notes := OrderedCollection new add: c4; add: d4; add: e4; add: f4; yourself.
	self drawer: (MNBeamDrawer canvas: self hiddenCanvas notes: notes).