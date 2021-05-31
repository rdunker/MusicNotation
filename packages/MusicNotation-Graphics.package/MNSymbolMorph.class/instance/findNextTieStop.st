as yet unclassified
findNextTieStop
	| note |
	note := self nextNote.
	note ifNotNil: [
		(note isKindOf: MNNoteMorph) ifTrue: [
			note note tieStop ifFalse: [ ^ note findNextTieStop ].
			note note tieStop ifTrue: [ ^ note ]
			] ifFalse: [^ note findNextTieStop ].
		
	].

	^ nil
	