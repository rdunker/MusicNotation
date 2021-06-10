tests
testDurationFraction

	| note |
	note := MNNote new
		duration: 0.25;
		yourself.
		
	self assert: note duration isFraction.
	self assert: 1/4 equals: note duration.
	self assert: note pitches isEmpty.