tests
testReadFrom
	| pitch |
	pitch := MNPitch readFrom: 'c4'.
	
	self assert: pitch isFlat not.
	self assert: pitch isNormal.
	self assert: pitch isSharp not.
	self assert: 4 equals: pitch octave.
	self assert: $c equals: pitch step.