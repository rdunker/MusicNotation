as yet unclassified
findNextBeamStop
	| note |
	note := self nextSymbol.
	note ifNotNil: [
		(note isKindOf: MNNoteMorph) ifTrue: [
			note note beamStop ifFalse: [ ^ note findNextBeamStop ].
			note note beamStop ifTrue: [ ^ note ]
			] ifFalse: [^ note findNextBeamStop ].
	].

	^ nil
	