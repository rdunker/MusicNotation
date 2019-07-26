accessing
stemDirection
	^ self
		ifUp: [ -1 ]
		ifDown: [ 1 ]