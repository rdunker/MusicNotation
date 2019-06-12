controlling
ifUp: upBlock ifDown: downBlock
	^ self up ifTrue: upBlock ifFalse: downBlock