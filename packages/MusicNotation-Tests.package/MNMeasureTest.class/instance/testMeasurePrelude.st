tests
testMeasurePrelude
	| context |
	context := MNContext new.
	context addMeasure.
	context measure addNote: self createC4.
	context measure addNote: self createC4.
	context addFClef.
	
	self assert: context measure clef equals: ( MNClef new sign: $f; line: 4).