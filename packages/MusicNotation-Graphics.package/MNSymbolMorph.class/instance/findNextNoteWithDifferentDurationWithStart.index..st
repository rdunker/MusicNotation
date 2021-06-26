calculating
findNextNoteWithDifferentDurationWithStart: aMNNoteMorph index: aNumber
	| note |
	note := self lastSymbol.
	note ifNotNil: [
		(note isKindOf: MNNoteMorph) ifTrue: [
			((note note duration = aMNNoteMorph note duration) and: [note noteLayout lines notEmpty] and: [ aMNNoteMorph ignoreBeam not] and: [aNumber > 0.0])
				ifTrue: [ 
					note ignoreBeam: true.
					^ note findNextNoteWithDifferentDurationWithStart: (aMNNoteMorph) index: (aNumber - 1.0)];
				ifFalse: [ ^ self ]
			] ifFalse: [^ self ].
	].

	^ nil