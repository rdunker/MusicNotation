tests
testTrebleClef
	| clef |
	clef := MNClef new
		sign: $g;
		line: 2.
	
	self assert: $g equals: clef sign.
	self assert: 2 equals: clef line.