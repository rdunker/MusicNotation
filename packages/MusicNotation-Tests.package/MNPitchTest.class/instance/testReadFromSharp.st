tests
testReadFromSharp
	| pitch |
	pitch := MNPitch readFrom: 'c4s'.
	
	self assert: pitch isFlat not.
	self assert: pitch isNormal not.
	self assert: pitch isSharp.
	self assert: 4 equals: pitch octave.
	self assert: $c equals: pitch step.