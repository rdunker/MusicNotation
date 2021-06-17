calculating
findNextNoteWithDifferentDurationWithStart: aMNNoteMorph
	| note |
	note := self nextSymbol.
	aMNNoteMorph ignoreBeam.
	note ifNotNil: [
		(note isKindOf: MNNoteMorph) ifTrue: [
			(((note note duration = aMNNoteMorph note duration) and: [note noteLayout lines notEmpty]and: [ aMNNoteMorph ignoreBeam not])) 
				ifTrue: [ 
					note ignoreBeam: true.
					^ note findNextNoteWithDifferentDurationWithStart: aMNNoteMorph ];
				ifFalse: [ ^ note ]
			] ifFalse: [^ note ].
	].

	^ nil