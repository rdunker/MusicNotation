visiting
visitMeasure: aMeasure
	| morph emptyDuration |
	morph := MNMeasureMorph measure: aMeasure.
		
	self addPrefixOfMeasure: aMeasure after: aMeasure leftSibling to: morph.
	
	self addAll: aMeasure notes to: morph.
	
	emptyDuration := self emptyDurationInMeasure: aMeasure.
	self addRestsForDuration: emptyDuration to: morph.
	
	morph addMorphBack: (aMeasure rightSibling
		ifNil: [ MNBarLineMorph newFinal ]
		ifNotNil: [ MNBarLineMorph newSingle ]).
	
	^ morph