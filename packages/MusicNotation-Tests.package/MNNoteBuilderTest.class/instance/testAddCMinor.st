tests
testAddCMinor
	| context cBuilder eBuilder gBuilder |
	context := self createContext.
	cBuilder := MNNoteBuilder context: context pitchFrom: 'c4'.
	eBuilder := MNNoteBuilder context: context pitchFrom: 'e4'.
	gBuilder := MNNoteBuilder context: context pitchFrom: 'g4'.
	
	cBuilder + eBuilder f + gBuilder / 4.
	cBuilder min / 4.
	
	self assert: 2 equals: context measure notes size.
	self assert: 1/4 equals: context measure notes first duration.
	self assert: 1/4 equals: context measure notes second duration.
	self assert: 3 equals: context measure notes first pitches size.
	self assert: 3 equals: context measure notes second pitches size.
	#('c4' 'e4f' 'g4') do: [ :value |
		self assert: ((context measure notes first pitches) includes: (MNPitch readFrom: value)).
		self assert: ((context measure notes second pitches) includes: (MNPitch readFrom: value)). ]