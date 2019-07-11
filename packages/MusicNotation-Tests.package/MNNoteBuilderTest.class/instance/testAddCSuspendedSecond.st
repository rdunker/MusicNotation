tests
testAddCSuspendedSecond
	| context cBuilder dBuilder gBuilder |
	context := self createContext.
	cBuilder := MNNoteBuilder context: context pitchFrom: 'c4'.
	dBuilder := MNNoteBuilder context: context pitchFrom: 'd4'.
	gBuilder := MNNoteBuilder context: context pitchFrom: 'g4'.
	
	cBuilder + dBuilder + gBuilder / 4.
	cBuilder sus2 / 4.
	
	self assert: 2 equals: context measure notes size.
	self assert: 1/4 equals: context measure notes first duration.
	self assert: 1/4 equals: context measure notes second duration.
	self assert: 3 equals: context measure notes first pitches size.
	self assert: 3 equals: context measure notes second pitches size.
	#('c4' 'd4' 'g4') do: [ :value |
		self assert: ((context measure notes first pitches) includes: (MNPitch readFrom: value)).
		self assert: ((context measure notes second pitches) includes: (MNPitch readFrom: value)). ]