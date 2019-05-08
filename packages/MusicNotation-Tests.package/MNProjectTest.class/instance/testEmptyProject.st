as yet unclassified
testEmptyProject

	| project |
	project := MNProject new.
	
	self assert: project parts isEmpty.