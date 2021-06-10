validating
findNextTieStop
	| note |
	note := self nextNote.
	note ifNotNil: [
		note tieStop ifFalse: [ ^ note findNextTieStop ].
		note tieStop ifTrue: [ ^ note ]
	].

	^ nil