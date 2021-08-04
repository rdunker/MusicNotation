tests
testDoItEnvironment
	| editor old |
	
	editor := MNEditor new.
	self deny: editor environment isNil.
	self deny: editor doItEnvironment isNil.
	self deny: editor doItReceiver isNil.
	
	old := editor doItEnvironment.
	editor resetDoItEnvironment.
	self deny: (old = editor doItEnvironment).