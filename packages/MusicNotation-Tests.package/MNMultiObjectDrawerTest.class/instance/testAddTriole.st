testing
testAddTriole
	"Ignore while linting"
	| c4 d4 e4 f4 measure part triole |
	c4 := self createC4.
	d4 := self createNoteWithDuration: 1/8 step: $d octave: 4.
	e4 := self createNoteWithDuration: 1/8 step: $e octave: 4.
	f4 := self createNoteWithDuration: 1/8 step: $f octave: 4.
	
	triole := OrderedCollection new add: d4 note; add: e4 note; add: f4 note; yourself.
	d4 note setTriole: triole.
	e4 note setTriole: triole.
	f4 note setTriole: triole.
	
	
	measure := MNMeasureMorph new
		addMorph: f4;
		addMorph: e4;
		addMorph: d4;
		addMorph: c4;
		yourself.
	
	part := MNPartMorph new
		addMorph: measure;
		yourself.
		
	part canvas: self hiddenCanvas.
	
	f4 triole: (OrderedCollection new add: f4; yourself).
	f4 checkForMultiObjects.
	
	self assert: f4 triole size = 3.
