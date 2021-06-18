calculating
findNextNoteWithDifferentDurationWithStart: aMNNoteMorph index: aNumber
	| note |
	note := self lastSymbol.
	note ifNotNil: [
		(note isKindOf: MNNoteMorph) ifTrue: [
			((note note duration = aMNNoteMorph note duration) and: [note noteLayout lines notEmpty] and: [ aMNNoteMorph ignoreBeam not] and: [aNumber >= 0.0])
				ifTrue: [ 
					self test: aNumber.
					note ignoreBeam: true.
					^ note findNextNoteWithDifferentDurationWithStart: (aMNNoteMorph) index: (aNumber - 2.0)];
				ifFalse: [ ^ note ]
			] ifFalse: [^ note ].
	].

	^ nil