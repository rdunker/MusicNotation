converting
createPartList: aProject
	| xml |
	xml := XMLElement named: #'part-list'.
	
	aProject parts keysAndValuesDo: [ :index :part |
		xml addElement: (self createScorePart: part at: index) ].
	
	^ xml