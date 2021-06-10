as yet unclassified
findNextTieStop
	| note |
	note := self nextSymbol.
	note ifNotNil: [
		(note isKindOf: MNNoteMorph) ifTrue: [
			note note tieStop ifFalse: [ ^ note findNextTieStop ].
			note note tieStop ifTrue: [ ^ note ]
			] ifFalse: [^ note findNextTieStop ].
	].

	^ nil