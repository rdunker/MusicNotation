tests
testAddNoteOverflow
	| context builder firstMeasure |
	context := self createContext.
	builder := MNNoteBuilder context: context pitchFrom: 'c4'.
	
	builder / 8.
	builder / 1.
	
	firstMeasure := context part measures first.
	
	self assert: 2 equals: context part measures size.
	self assert: 2 equals: context part measures first notes size.
	self assert: firstMeasure noteDuration equals: firstMeasure time asInteger.
	self assert: firstMeasure notes last tieStart.
	self deny: firstMeasure notes last tieStop.
	self assert: 1 equals: context measure notes size.
	self assert: 1/8 equals: context measure notes first duration.
	self assert: context measure notes first tieStop.
	self deny: context measure notes first tieStart.