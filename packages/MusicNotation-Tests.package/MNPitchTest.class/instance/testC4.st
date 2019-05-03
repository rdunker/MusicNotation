tests
testC4
	| pitch |
	pitch := MNPitch new
		octave: 4;
		step: $c;
		yourself.
	
	self assert: pitch isFlat not.
	self assert: pitch isNormal.
	self assert: pitch isSharp not.
	self assert: 4 equals: pitch octave.
	self assert: $c equals: pitch step.
	self assertFrequencyOnAnotherOctave: pitch.