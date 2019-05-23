as yet unclassified
testPartWithMeasure

	| pitch note measure part |
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
			
	self assert: measure equals: part measures first.
	self assert: 1 equals: part measures size.