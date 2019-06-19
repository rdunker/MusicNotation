visiting
visitMeasure: aMeasure
	| morph |
	morph := MNMeasureMorph measure: aMeasure.
		
	self addPrefixOfMeasure: aMeasure after: aMeasure leftSibling to: morph.
	
	self addAll: aMeasure notes to: morph.
	
	morph addMorphBack: (aMeasure rightSibling
		ifNil: [ MNBarLineMorph newFinal ]
		ifNotNil: [ MNBarLineMorph newSingle ]).
	
	^ morph