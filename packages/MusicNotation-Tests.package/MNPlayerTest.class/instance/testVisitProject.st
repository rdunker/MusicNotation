as yet unclassified
testVisitProject
	"ignore while liniting"
	| generator project part1 part2 measure1 measure2 note1 note2 pitch1 pitch2 |
	generator := MNSoundGenerator new.
	project := MNProject new.
	pitch1 := MNPitch new
		octave: 4;
		step: $a;
		yourself.
	pitch2 := MNPitch new
		octave: 4;
		step: $a;
		yourself.

	note1 := MNNote new
		duration: 1/4;
		addPitch: pitch1;
		yourself.
		
	note2 := MNNote new
		duration: 1/4;
		addPitch: pitch2;
		yourself.
		
	measure1 := MNMeasure new
		addNote: note1;
		yourself.
		
	measure2 := MNMeasure new
		addNote: note2;
		yourself.
		
	part1 := MNPart new
		addMeasure: measure1;
		yourself.
		
	part2 := MNPart new
		addMeasure: measure2;
		yourself.
		
	project addPart: part1.
	project addPart: part2.
	
	self assert: true equals: generator soundSequence isNil.
	
	generator visitProject: project.
	
	self assert: false equals: generator soundSequence sounds isEmpty.
	self assert: 2 equals: generator soundSequence sounds size.