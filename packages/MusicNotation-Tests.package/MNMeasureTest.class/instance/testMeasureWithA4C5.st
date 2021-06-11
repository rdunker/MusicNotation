tests
testMeasureWithA4C5
	"Ignore while linting"
	| measure noteA4 noteC5 pitchA4 pitchC5 |
	pitchA4 := MNPitch new
		octave: 4;
		step: $a;
		yourself.
		
	noteA4 := MNNote new
		duration: 1/4;
		addPitch: pitchA4;
		yourself.
		
	pitchC5 := MNPitch new
		octave: 5;
		step: $c;
		yourself.
		
	noteC5 := MNNote new
		duration: 1/4;
		addPitch: pitchC5;
		yourself.
		
	measure := MNMeasure new
		addNote: noteA4;
		addNote: noteC5;
		yourself.
		
	self assert: noteA4 equals: measure notes first.
	self assert: noteC5 equals: measure notes second.
	self assert: 2 equals: measure notes size.