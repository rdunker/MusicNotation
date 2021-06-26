calculating
findMinHeightTill: aMNNoteMorph currMinHeight: aFloat
	| note|
	note := self lastSymbol.
	note ifNotNil: [
		(note isKindOf: MNNoteMorph) ifTrue: [
			((self = aMNNoteMorph) not) 
				ifTrue: [ 
					^ (note findMinHeightTill: aMNNoteMorph currMinHeight: (((self noteLayout lines first) asFloat) max: aFloat))];
				ifFalse: [ ^ (self noteLayout lines first) max: aFloat ]
			] ifFalse: [^ (self noteLayout lines first) max: aFloat ].
	].

	^ nil