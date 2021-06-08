as yet unclassified
findNextSlurStop
	| note |
	note := self nextSymbol.
	note ifNotNil: [
		(note isKindOf: MNNoteMorph) ifTrue: [
			note note slurStop ifFalse: [ ^ note findNextSlurStop ].
			note note slurStop ifTrue: [ ^ note ]
			] ifFalse: [^ note findNextSlurStop ].
		
	].

	^ nil
	