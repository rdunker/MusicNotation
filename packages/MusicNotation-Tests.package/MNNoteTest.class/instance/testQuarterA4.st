tests
testQuarterA4

	| pitch note |
	pitch := MNPitch new
		octave: 4;
		step: $a;
		yourself.
		
	note := MNNote new
		duration: 1/4;
		addPitch: pitch;
		yourself.
		
	self assert: 1/4 equals: note duration.
	self assert: note pitches first equals: pitch.
	self assert: 1 equals: note pitches size.