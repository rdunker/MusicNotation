range calculation
rangeOffsetIn: anEditor statement: anInteger
	| offset |
	offset := ((1 to: anInteger - 1) collect: [:each | (anEditor content contentsList at: each) size] ).
	offset 
		ifEmpty: [^ 0] 
		ifNotEmpty: [^ offset sum].