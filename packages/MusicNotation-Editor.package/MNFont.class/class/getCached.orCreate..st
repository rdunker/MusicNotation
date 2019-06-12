accessing
getCached: aName orCreate: aBlock
	^ self useCache
		ifTrue: [ self cache at: aName ifAbsentPut: aBlock ]
		ifFalse: aBlock