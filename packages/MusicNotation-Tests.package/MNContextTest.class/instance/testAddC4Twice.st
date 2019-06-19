as yet unclassified
testAddC4Twice
	| context |
	context := MNContext new.
	(context addNote: self createC4) * 2.
	
	self assert: 1 equals: context project parts size.
	self assert: 1 equals: context part measures size.
	self assert: 2 equals: context measure notes size.
	self assert: self createC4 hash equals: context measure notes first hash.
	self assert: self createC4 hash equals: context measure notes second hash.