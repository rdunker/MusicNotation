tests
testEmptyContext
	| context |
	context := MNContext new.
	
	self assert: 1 equals: context project parts size.
	self assert: 1 equals: context part measures size.
	self assert: context measure notes isEmpty.
	self assert: MNMeasure new hash equals: context measure hash.