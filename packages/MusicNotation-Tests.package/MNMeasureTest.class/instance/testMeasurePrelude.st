tests
testMeasurePrelude
	
	| context |
	context := MNContext new.
	context addMeasure.
	context measure timeNumerator: 2 denominator: 4.
	context measure addNote: self createC4.
	context prelude.
	context measure addNote: self createC4.
	
	self assert: 1 equals: context measure notes size.
	self assert: 2 equals: context measure time numerator.
	self assert: 4 equals: context measure time denominator.
	
	