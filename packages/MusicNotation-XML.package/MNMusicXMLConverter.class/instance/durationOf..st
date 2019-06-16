accessing
durationOf: aNote
	| d div |
	div := self divisions
		ifNil: [ self divisionsOf: (aNote parent
			ifNil: [ MNInvalidValue for: aNote at: #parent description: 'unable to calculate divisions' ]) ].
	d := aNote duration * div.
	d isInteger
		ifFalse: [ MNInvalidValue for: aNote at: #duration description: 'is not divisible by ', div ].
	^ d