as yet unclassified
testEmptyPart

	| part |
	part := MNPart new.
	
	self assert: part measures isEmpty.