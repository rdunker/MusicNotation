tests
testAddChord4
	| context cBuilder eBuilder gBuilder |
	context := self createContext.
	cBuilder := MNNoteBuilder context: context pitchFrom: 'c4'.
	eBuilder := MNNoteBuilder context: context pitchFrom: 'e4'.
	gBuilder := MNNoteBuilder context: context pitchFrom: 'g4'.
	
	cBuilder + eBuilder + gBuilder / 4.
	
	self assert: 1 equals: context measure notes size.
	self assert: 1/4 equals: context measure notes first duration.
	self assert: 3 equals: context measure notes first pitches size.
	#ceg keysAndValuesDo: [ :key :value |
		self assert: value equals: (context measure notes first pitches at: key) step.
		self assert: 4 equals: (context measure notes first pitches at: key) octave.
		self assert: 0 equals: (context measure notes first pitches at: key) alter ]