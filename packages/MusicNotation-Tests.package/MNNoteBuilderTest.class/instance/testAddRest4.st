tests
testAddRest4
	| context builder |
	context := self createContext.
	builder := MNNoteBuilder context: context.
	
	builder / 4.
	
	self assert: 1 equals: context measure notes size.
	self assert: 1/4 equals: context measure notes first duration.
	self assert: context measure notes first pitches isEmpty.