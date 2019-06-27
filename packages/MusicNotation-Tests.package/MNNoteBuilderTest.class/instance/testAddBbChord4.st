as yet unclassified
testAddBbChord4
	| context bBuilder dBuilder fBuilder |
	context := self createContext.
	bBuilder := MNNoteBuilder context: context pitch: 'b4'.
	dBuilder := MNNoteBuilder context: context pitch: 'd4'.
	fBuilder := MNNoteBuilder context: context pitch: 'f4'.
	
	bBuilder f + dBuilder + fBuilder / 4.
	
	self assert: 1 equals: context measure notes size.
	self assert: 1/4 equals: context measure notes first duration.
	self assert: 3 equals: context measure notes first pitches size.
	#('b4f' 'd4' 'f4') keysAndValuesDo: [ :key :value |
		self assert: (MNPitch readFrom: value) equals: (context measure notes first pitches at: key). ]