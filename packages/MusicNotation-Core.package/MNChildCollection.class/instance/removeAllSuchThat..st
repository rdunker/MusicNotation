removing
removeAllSuchThat: aBlock
	^ self removeAllSuchThat: [ :each |
		(aBlock value: each)
			ifFalse: [ each privateAbandon ];
			yourself ]