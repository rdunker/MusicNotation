tests
testTransposeC4Default
	| pitch |
	pitch := self pitchC4.
	MNNote new addPitch: pitch; transpose: 3.
	
	self assert: 4 equals: pitch octave.
	self assert: (MNPitch new
		octave: 4;
		step: $e;
		alter: -1;
		frequency) equals: pitch frequency.