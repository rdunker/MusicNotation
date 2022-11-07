statement mapping 
rangeOffsetStatement: anInteger
	| offset |
	offset := ((1 to: anInteger - 1) collect: [:each| (self contentsList at: each) size] ).
	offset 
		ifEmpty: [^ 0] 
		ifNotEmpty: [^ offset sum].