testing
testIsDiagonalOrSamePitch
	| c4 f4 d4 drawer notes e4 |

	c4 := self createC4.
	d4 := self createNoteWithDuration: 1/8 step: $d octave: 4.
	e4 := self createNoteWithDuration: 1/8 step: $e octave: 4.
	f4 := self createNoteWithDuration: 1/8 step: $f octave: 4.
	notes := OrderedCollection new add: c4; add: d4; add: e4; add: f4; yourself.
	drawer := MNBeamDrawer canvas: self hiddenCanvas notes: notes.
	
	self assert: drawer isDiagonalOrSamePitch.