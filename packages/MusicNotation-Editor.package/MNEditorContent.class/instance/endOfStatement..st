statement mapping 
endOfStatement: anInteger
	^ (self startOfStatement: anInteger) + ((self contentsList at: anInteger) size) - 1