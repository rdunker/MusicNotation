as yet unclassified
validateContext: aContext withCollection: aCollection
	| notes |
	notes := aContext measure notes.
	self assert: 2 equals: notes size.
	self assert: 1/4 equals: notes first duration.
	self assert: 1/4 equals: notes second duration.
	self assert: aCollection size equals: notes first pitches size.
	self assert: aCollection size equals: notes second pitches size.
	aCollection do: [ :value |
		self assert: ((notes first pitches) includes: (MNPitch readFrom: value)).
		self assert: ((notes second pitches) includes: (MNPitch readFrom: value)). ]