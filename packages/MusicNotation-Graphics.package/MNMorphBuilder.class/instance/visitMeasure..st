visiting
visitMeasure: aMeasure
	| morph emptyDuration |
	morph := MNMeasureMorph measure: aMeasure.
		
	self addPrefixOfMeasure: aMeasure to: morph.
	
	self addAll: aMeasure notes to: morph.
	
	emptyDuration := self emptyDurationInMeasure: aMeasure.
	(MNNote new createCopiesRecursivelyForDuration: emptyDuration) do: [ :note |
		self add: note to: morph ].
	
	morph addMorphBack: (aMeasure rightSibling
		ifNil: [ MNBarLineMorph newFinal ]
		ifNotNil: [ MNBarLineMorph newSingle ]).
	
	^ morph