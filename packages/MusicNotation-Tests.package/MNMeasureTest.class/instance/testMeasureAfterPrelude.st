tests
testMeasureAfterPrelude
	
	| context |
	context := MNContext new.
	context addMeasure.
	context addNote: self createC4.
	context prelude. 
	
	self assert: true equals: context measure isAfterPrelude.
	
	