tests
testEquals
	| pitch1 pitch2 |
	pitch1 := MNPitch new
		step: $c;
		octave: 4;
		alter: 0.
	
	pitch2 := MNPitch new
		step: $c;
		octave: 4;
		alter: 0.
	
	self assert: pitch1 equals: pitch2.