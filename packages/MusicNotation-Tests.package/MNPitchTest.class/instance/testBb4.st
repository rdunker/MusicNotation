tests
testBb4
	| pitch |
	pitch := MNPitch new
		octave: 4;
		step: $b;
		alter: -1;
		yourself.
	
	self assert: pitch isFlat.
	self assert: pitch isNormal not.
	self assert: pitch isSharp not.
	self assert: 4 equals: pitch octave.
	self assert: $b equals: pitch step.
	self assert: 34 equals: pitch steps.
	self assertFrequencyOnAnotherOctave: pitch.