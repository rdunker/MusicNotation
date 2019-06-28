tests
testReadFromFlat
	| pitch |
	pitch := MNPitch readFrom: 'c4f'.
	
	self assert: pitch isFlat.
	self assert: pitch isNormal not.
	self assert: pitch isSharp not.
	self assert: 4 equals: pitch octave.
	self assert: $c equals: pitch step.