converting
addPrefixOfMeasure: aMeasure to: aMorph
	(aMeasure valueChanged: #clef)
		ifTrue: [ self add: aMeasure clef to: aMorph ].
	((aMeasure valueChanged: #key) or: (aMeasure valueChanged: #clef))
		ifTrue: [ self add: aMeasure key to: aMorph ].
	(((aMeasure valueChanged: #time) and: ((aMeasure prelude =  false) or: (aMeasure prelude = nil))) and: ((aMeasure afterPrelude = nil) or: (aMeasure afterPrelude = false)))
		ifTrue: [ aMorph addMorphBack: (self createTime: aMeasure time) ].
	((aMeasure valueChanged: #time) and: (aMeasure prelude =  true))
		ifTrue: [ aMorph addMorphBack: (self createTime: (Fraction numerator: aMeasure testNum denominator: aMeasure testDenum)) ]