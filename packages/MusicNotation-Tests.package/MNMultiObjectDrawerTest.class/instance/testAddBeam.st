testing
testAddBeam
	"Ignore while linting"
	| c4 d4 e4 f4 measure part |
	c4 := self createC4.
	d4 := self createNoteWithDuration: 1/8 step: $d octave: 4.
	e4 := self createNoteWithDuration: 1/8 step: $e octave: 4.
	f4 := self createNoteWithDuration: 1/8 step: $f octave: 4.
	
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
	
	
	f4 drawOn: self hiddenCanvas.
	
	self assert: f4 beam size = 4.
