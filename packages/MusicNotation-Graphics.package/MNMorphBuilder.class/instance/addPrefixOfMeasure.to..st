converting
addPrefixOfMeasure: aMeasure to: aMorph
	(aMeasure valueChanged: #clef)
		ifTrue: [ self add: aMeasure clef to: aMorph ].
	((aMeasure valueChanged: #key) or: (aMeasure valueChanged: #clef))
		ifTrue: [ self add: aMeasure key to: aMorph ].
	(((aMeasure valueChanged: #time) and: (aMeasure isPrelude)) and: (aMeasure isAfterPrelude))
		ifTrue: [ aMorph addMorphBack: (self createTime: aMeasure time) ].
	((aMeasure valueChanged: #time) and: (aMeasure isPrelude))
		ifTrue: [ aMorph addMorphBack: (self createTime: (Fraction numerator: aMeasure prevNumerator denominator: aMeasure prevDenominator)) ]