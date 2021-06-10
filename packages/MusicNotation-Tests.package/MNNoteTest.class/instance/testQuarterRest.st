tests
testQuarterRest

	| note |
	note := MNNote new
		duration: 1/4;
		yourself.
		
	self assert: 1/4 equals: note duration.
	self assert: note pitches isEmpty.