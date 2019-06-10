tests
testBassClef
	| clef |
	clef := MNClef new
		sign: $f;
		line: 2.
	
	self assert: $f equals: clef sign.
	self assert: 2 equals: clef sign.