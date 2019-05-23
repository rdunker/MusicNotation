tests
testFlatSetHalfStepsAb4
	| pitch |
	pitch := self pitchC4.
	MNFlatTransposer new setHalfSteps: 56 of: pitch.
	
	self assert: pitch isFlat.
	self assert: 4 equals: pitch octave.
	self assert: $a equals: pitch step.