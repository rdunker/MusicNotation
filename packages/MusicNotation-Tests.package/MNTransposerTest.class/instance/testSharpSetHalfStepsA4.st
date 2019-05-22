tests
testSharpSetHalfStepsA4
	| pitch |
	pitch := self pitchC4.
	MNSharpTransposer new setHalfSteps: 57 of: pitch.
	
	self assert: pitch isNormal.
	self assert: 4 equals: pitch octave.
	self assert: $a equals: pitch step.