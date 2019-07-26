tests
testCs4
	| pitch |
	pitch := MNPitch new
		octave: 4;
		step: $c;
		alter: 1;
		yourself.
	
	self assert: pitch isFlat not.
	self assert: pitch isNormal not.
	self assert: pitch isSharp.
	self assert: 4 equals: pitch octave.
	self assert: $c equals: pitch step.
	self assert: 28 equals: pitch steps.
	self assertFrequencyOnAnotherOctave: pitch.