converting
createScorePartwise: aProject
	| xml |
	xml := XMLElement named: #'score-partwise'.
	xml attributeAt: #version put: '3.1'.
	xml addElement: (self createPartList: aProject).
	
	aProject parts keysAndValuesDo: [ :index :part |
		xml addElement: (self convertPart: part at: index) ].
	
	^ xml