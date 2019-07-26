converting
addPrefixOfMeasure: aMeasure to: aMorph
	(aMeasure valueChanged: #clef)
		ifTrue: [ self add: aMeasure clef to: aMorph ].
	((aMeasure valueChanged: #key) or: (aMeasure valueChanged: #clef))
		ifTrue: [ self add: aMeasure key to: aMorph ].
	(aMeasure valueChanged: #time)
		ifTrue: [ aMorph addMorphBack: (self createTime: aMeasure time) ].