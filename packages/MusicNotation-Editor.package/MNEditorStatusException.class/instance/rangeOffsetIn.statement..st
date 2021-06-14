range calculation
rangeOffsetIn: anEditor statement: anInteger
	| offset |
	offset := ((1 to: anInteger - 1) collect: [:i | (anEditor content contentsList at: i) size] ).
	offset 
		ifEmpty: [^ 0] 
		ifNotEmpty: [^ offset sum].