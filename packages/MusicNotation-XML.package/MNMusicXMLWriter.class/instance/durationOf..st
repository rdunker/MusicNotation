accessing
durationOf: aNote
	| d |
	d := aNote duration * self divisions.
	d isInteger
		ifFalse: [ self halt: 'note duration ', aNote duration, ' is not divisible by ', self divisions ].
	^ d