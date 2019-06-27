as yet unclassified
testAddEChord4
	| context eBuilder gBuilder bBuilder |
	context := self createContext.
	eBuilder := MNNoteBuilder context: context pitch: 'e4'.
	gBuilder := MNNoteBuilder context: context pitch: 'g4'.
	bBuilder := MNNoteBuilder context: context pitch: 'b4'.
	
	eBuilder + gBuilder s + bBuilder / 4.
	
	self assert: 1 equals: context measure notes size.
	self assert: 1/4 equals: context measure notes first duration.
	self assert: 3 equals: context measure notes first pitches size.
	#('e4' 'g4s' 'b4') keysAndValuesDo: [ :key :value |
		self assert: (MNPitch readFrom: value) equals: (context measure notes first pitches at: key). ]