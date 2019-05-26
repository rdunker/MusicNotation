tests
testA4
	| pitch |
	pitch := MNPitch new
		octave: 4;
		step: $a;
		yourself.
	
	self assert: pitch isFlat not.
	self assert: pitch isNormal.
	self assert: pitch isSharp not.
	self assert: 4 equals: pitch octave.
	self assert: $a equals: pitch step.
	self assert: 440 equals: pitch frequency.
	self assert: 33 equals: pitch steps.
	self assertFrequencyOnAnotherOctave: pitch.