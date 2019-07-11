tests
testAddEMajor4
	| context eBuilder gBuilder bBuilder |
	context := self createContext.
	eBuilder := MNNoteBuilder context: context pitchFrom: 'e4'.
	gBuilder := MNNoteBuilder context: context pitchFrom: 'g4'.
	bBuilder := MNNoteBuilder context: context pitchFrom: 'b4'.
	
	eBuilder + gBuilder s + bBuilder / 4.
	eBuilder maj / 4.
	
	self assert: 2 equals: context measure notes size.
	self assert: 1/4 equals: context measure notes first duration.
	self assert: 1/4 equals: context measure notes second duration.
	self assert: 3 equals: context measure notes first pitches size.
	self assert: 3 equals: context measure notes second pitches size.
	#('e4' 'g4s' 'b4') do: [ :value |
		self assert: ((context measure notes first pitches) includes: (MNPitch readFrom: value)).
		self assert: ((context measure notes second pitches) includes: (MNPitch readFrom: value)). ]