tests
testDoItEnvironment
	| editor old |
	editor := MNEditor new.
	self assert: editor environment isNil not.
	self assert: editor doItEnvironment isNil not.
	self assert: editor doItReceiver isNil not.
	
	old := editor doItEnvironment.
	editor resetDoItEnvironment.
	self assert: (old == editor doItEnvironment) not.