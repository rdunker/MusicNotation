tests
testAddSlurs
	| context |
	context := MNContext new.

	context addNote: self createC4.
	context startSlur. 
	
	context addNote: self createC4.
	context stopSlur. 
	
	self assert: true equals: context measure notes first slurStart.
	self assert: true equals: context measure notes second slurStop.