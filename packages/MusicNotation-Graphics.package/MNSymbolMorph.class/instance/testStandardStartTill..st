calculating
testStandardStartTill: aMNNoteMorph
	| note|
	note := self lastSymbol.
	note ifNotNil: [
		(note isKindOf: MNNoteMorph) ifTrue: [
			((self = aMNNoteMorph) not) 
				ifTrue: [ 
					^ self testStandardStartTill: aMNNoteMorph diff: (self noteLayout lines first - note noteLayout lines first).];
				ifFalse: [ ^ true ]
			] ifFalse: [^ true ].
	].

	^ nil 