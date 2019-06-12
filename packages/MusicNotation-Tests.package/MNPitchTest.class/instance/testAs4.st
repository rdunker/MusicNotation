tests
testAs4
	| pitch |
	pitch := MNPitch new
		octave: 4;
		step: $a;
		alter: 1;
		yourself.
	
	self assert: pitch isFlat not.
	self assert: pitch isNormal not.
	self assert: pitch isSharp.
	self assert: 4 equals: pitch octave.
	self assert: $a equals: pitch step.
	self assert: 440 < pitch frequency.
	self assert: 33 equals: pitch steps.
	self assertFrequencyOnAnotherOctave: pitch.