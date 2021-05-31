tests
testAddTies
	| context |
	context := MNContext new.

	context addNote: self createC4.
	context startTie. 
	
	context addNote: self createC4.
	context stopTie. 
	
	self assert: true equals: context measure notes first tieStart.
	self assert: true equals: context measure notes second tieStop.