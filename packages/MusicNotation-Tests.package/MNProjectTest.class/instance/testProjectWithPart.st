tests
testProjectWithPart
	"Ignore while linting"
	| pitch note measure part project |
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

	part := MNPart new
		addMeasure: measure;
		yourself.
		
	project := MNProject new
		addPart: part;
		yourself.
			
	self assert: part equals: project parts first.
	self assert: 1 equals: project parts size.