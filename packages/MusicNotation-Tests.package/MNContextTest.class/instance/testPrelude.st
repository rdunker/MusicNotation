tests
testPrelude
	| context |
	
	context := MNContext new.

	context addNote: self createC4.
	context prelude. 
	context addNote: self createC4.
	context addNote: self createC4.
	context addNote: self createC4.
	
	self assert: (context measure isAfterPrelude = true).
	self assert: (context part measures first isAfterPrelude = false).
	self assert: (context measure isPrelude = false).
	self assert: (context part measures first isPrelude = true).