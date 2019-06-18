converting
addPrefixOfMeasure: aMeasure after: leftSibling to: aMorph
	aMeasure clef = (leftSibling ifNotNilDo: #clef)
		ifFalse: [ self
			add: aMeasure clef to: aMorph;
			add: aMeasure key to: aMorph ]
		ifTrue: [
			aMeasure key = (leftSibling ifNotNilDo: #key)
				ifFalse: [ self add: aMeasure key to: aMorph ]].
	
	aMeasure time = (leftSibling ifNotNilDo: #time)
		ifFalse: [ aMorph addMorphBack: (self createTime: aMeasure time) ].