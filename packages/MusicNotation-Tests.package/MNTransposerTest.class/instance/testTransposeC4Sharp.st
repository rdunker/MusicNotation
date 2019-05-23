tests
testTransposeC4Sharp
	| pitch |
	pitch := self pitchC4.
	MNNote new addPitch: pitch; transposeSharp: 3.
	
	self assert: pitch isSharp.
	self assert: 4 equals: pitch octave.
	self assert: $d equals: pitch step.