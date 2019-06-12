accessing
stemDirection
	"The sign value of the stem (top left origin)"
	^ self
		ifUp: [ -1 ]
		ifDown: [ 1 ]