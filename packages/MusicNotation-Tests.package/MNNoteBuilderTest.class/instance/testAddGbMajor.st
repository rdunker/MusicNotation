tests
testAddGbMajor
	| context gBuilder bBuilder dBuilder |
	context := self createContext.
	gBuilder := MNNoteBuilder context: context pitchFrom: 'g4'.
	bBuilder := MNNoteBuilder context: context pitchFrom: 'b4'.
	dBuilder := MNNoteBuilder context: context pitchFrom: 'd5'.
	
	(gBuilder + bBuilder + dBuilder) f / 4.
	gBuilder maj f / 4.
	
	self assert: 2 equals: context measure notes size.
	self assert: 1/4 equals: context measure notes first duration.	
	self assert: 1/4 equals: context measure notes second duration.
	self assert: 3 equals: context measure notes first pitches size.	
	self assert: 3 equals: context measure notes second pitches size.
	#('g4f' 'b4f' 'd5f') do: [ :value |
		self assert: ((context measure notes first pitches) includes: (MNPitch readFrom: value)).
		self assert: ((context measure notes second pitches) includes: (MNPitch readFrom: value)). ]