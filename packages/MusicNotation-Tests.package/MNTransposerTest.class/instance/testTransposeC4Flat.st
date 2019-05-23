tests
testTransposeC4Flat
	| pitch |
	pitch := self pitchC4.
	MNNote new addPitch: pitch; transposeFlat: 3.
	
	self assert: pitch isFlat.
	self assert: 4 equals: pitch octave.
	self assert: $e equals: pitch step.