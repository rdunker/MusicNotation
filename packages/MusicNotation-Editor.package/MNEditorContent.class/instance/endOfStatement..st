statement mapping 
endOfStatement: anInteger
	| offset |
	offset := 1.
	^ (self startOfStatement: anInteger) + ((self contentsList at: anInteger) size) - offset