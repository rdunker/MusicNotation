tests
testCLessThanOrEqualToD
	| pitch1 pitch2 |
	pitch1 := MNPitch readFrom: 'c4'.
	
	pitch2 := MNPitch readFrom: 'd4'.
	
	self assert: pitch1 <= pitch2.
	self assert: (pitch2 <= pitch1) not.