converting
createAttributeForMeasure: aMeasure AtSymbol: aSymbol
	| value |
	value := aSymbol value: aMeasure.
	^ (aSymbol == #time)
		ifTrue: [ self createTime: value ]
		ifFalse: [ value accept: self ]