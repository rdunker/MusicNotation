tests
testPartWithTwoMeasures
	"Ignore while linting"
	| pitch note measure1 part measure2 |
	pitch := MNPitch new
		octave: 4;
		step: $a;
		yourself.
		
	note := MNNote new
		duration: 1/4;
		addPitch: pitch;
		yourself.
		
	measure1 := MNMeasure new
		addNote: note;
		yourself.
		
	measure2 := MNMeasure new.

	part := MNPart new
		addMeasure: measure1;
		addMeasure: measure2;
		yourself.
			
	self assert: measure1 equals: part measures first.
	self assert: 2 equals: part measures size.