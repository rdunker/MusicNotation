tests
testCsLessThanOrEqualToDb
	| pitch1 pitch2 |
	pitch1 := MNPitch readFrom: 'c4s'.
	
	pitch2 := MNPitch readFrom: 'd4f'.
	
	self assert: pitch1 <= pitch2.
	self deny: pitch2 <= pitch1.