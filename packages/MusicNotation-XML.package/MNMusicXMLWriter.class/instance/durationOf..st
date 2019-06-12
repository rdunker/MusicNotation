accessing
durationOf: aNote
	| d |
	d := aNote duration * self divisions.
	d isInteger
		ifFalse: [ MNInvalidValue for: aNote at: #duration description: 'is not divisible by ', self divisions ].
	^ d