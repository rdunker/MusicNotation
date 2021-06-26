calculating
findMaxHeightTill: aMNNoteMorph currMaxHeight: aFloat
	| note|
	note := self lastSymbol.
	note ifNotNil: [
		(note isKindOf: MNNoteMorph) ifTrue: [
			((self = aMNNoteMorph) not) 
				ifTrue: [ 
					^ (note findMaxHeightTill: aMNNoteMorph currMaxHeight: (((self noteLayout lines first) asFloat) min: aFloat))];
				ifFalse: [ ^ (self noteLayout lines first) min: aFloat ]
			] ifFalse: [^ (self noteLayout lines first) min: aFloat ].
	].

	^ nil