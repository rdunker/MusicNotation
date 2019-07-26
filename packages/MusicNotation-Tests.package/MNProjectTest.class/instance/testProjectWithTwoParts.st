tests
testProjectWithTwoParts

	| pitch note measure project part1 part2 |
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

	part1 := MNPart new
		addMeasure: measure;
		yourself.
		
	part2 := MNPart new.
		
	project := MNProject new
		addPart: part1;
		addPart: part2;
		yourself.
			
	self assert: part1 equals: project parts first.
	self assert: 2 equals: project parts size.