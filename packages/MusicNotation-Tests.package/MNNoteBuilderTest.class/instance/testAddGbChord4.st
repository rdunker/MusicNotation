tests
testAddGbChord4
	| context gBuilder bBuilder dBuilder |
	context := self createContext.
	gBuilder := MNNoteBuilder context: context pitchFrom: 'g4'.
	bBuilder := MNNoteBuilder context: context pitchFrom: 'b4'.
	dBuilder := MNNoteBuilder context: context pitchFrom: 'd4'.
	
	(gBuilder + bBuilder + dBuilder) f / 4.
	
	self assert: 1 equals: context measure notes size.
	self assert: 1/4 equals: context measure notes first duration.
	self assert: 3 equals: context measure notes first pitches size.
	#('g4f' 'b4f' 'd4f') keysAndValuesDo: [ :key :value |
		self assert: (MNPitch readFrom: value) equals: (context measure notes first pitches at: key). ]