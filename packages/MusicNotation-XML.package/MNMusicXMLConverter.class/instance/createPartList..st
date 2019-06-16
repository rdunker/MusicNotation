converting
createPartList: aProject
	| xml |
	xml := XMLElement named: #'part-list'.
	
	1 to: aProject parts size do: [ :index |
		xml addElement: (self createScorePartAt: index) ].
	
	^ xml