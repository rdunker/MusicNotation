calculating
beamIsDiagonalTill: aMNNoteMorph
	| note|
	note := self lastSymbol.
	note ifNotNil: [
		(note isKindOf: MNNoteMorph) ifTrue: [
			((self = aMNNoteMorph) not) 
				ifTrue: [ 
					^ self beamIsDiagonalTill: aMNNoteMorph pitch: (self noteLayout lines first - note noteLayout lines first).];
				ifFalse: [ ^ true ]
			] ifFalse: [^ true ].
	].

	^ nil 