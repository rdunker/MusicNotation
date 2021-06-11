accessing
fifths: anInteger
	| newFifths |
	newFifths := anInteger asInteger.
	(newFifths abs > 7)
		ifTrue: [ MNInvalidValue for: self at: #fifths value: newFifths description: 'not in range -7 ... +7' ].
	fifths := newFifths.