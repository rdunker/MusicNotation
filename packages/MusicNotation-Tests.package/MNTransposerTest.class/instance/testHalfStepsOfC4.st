tests
testHalfStepsOfC4
	| pitch |
	pitch := self pitchC4.
	
	self assert: 48 equals: (MNTransposer new halfStepsOf: pitch).