tests
testEmptyProject
	| project |
	project := MNProject new.
	
	self assert: project parts isEmpty.