tests
testMeasureWithA4
	| pitch note measure |
	pitch := MNPitch new
		octave: 4;
		step: $a;
		yourself.
		
	note := MNNote new
		duration: 1/4;
		addPitch: pitch;
		yourself.
		
	measure := MNMeasure new
		addNote: note;
		yourself.
		
	self assert: note equals: measure notes first.
	self assert: 1 equals: measure notes size.