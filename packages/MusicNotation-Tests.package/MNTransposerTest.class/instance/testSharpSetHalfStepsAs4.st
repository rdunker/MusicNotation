tests
testSharpSetHalfStepsAs4
	| pitch |
	pitch := self pitchC4.
	MNSharpTransposer new setHalfSteps: 58 of: pitch.
	
	self assert: pitch isSharp.
	self assert: 4 equals: pitch octave.
	self assert: $a equals: pitch step.