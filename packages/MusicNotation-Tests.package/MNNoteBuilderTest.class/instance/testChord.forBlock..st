tests
testChord: aCollection forBlock: aBlock
	| context builder |
	context := self createContext.
	builder := MNNoteBuilder context: context pitchFrom: aCollection first.
	
	(self createChordFrom: aCollection withContext: context) / 4.
	(aBlock value: builder) / 4.
	
	self validateContext: context withCollection: aCollection