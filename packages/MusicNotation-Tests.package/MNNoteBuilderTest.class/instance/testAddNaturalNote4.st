tests
testAddNaturalNote4
	| context builder |
	context := self createContext.
	builder := MNNoteBuilder context: context pitchFrom: 'c4s'.
	
	builder n / 4.
	
	self assert: 1 equals: context measure notes size.
	self assert: 1/4 equals: context measure notes first duration.
	self assert: 1 equals: context measure notes first pitches size.
	self assert: $c equals: context measure notes first pitches first step.
	self assert: 4 equals: context measure notes first pitches first octave.
	self assert: 0 equals: context measure notes first pitches first alter.