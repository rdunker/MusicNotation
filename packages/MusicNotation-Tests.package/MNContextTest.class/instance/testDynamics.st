tests
testDynamics
	| context |
	
	context := MNContext new.

	context addNote: self createC4.
	context setDynamics: 'ff'.
	self assert: (context lastNote dynamics = 'ff').
	