calculating
testFindMaxHeightTill: aMNNoteMorph maxHeight: aFloat
	| note|
	note := self lastSymbol.
	note ifNotNil: [
		(note isKindOf: MNNoteMorph) ifTrue: [
			((self = aMNNoteMorph) not) 
				ifTrue: [ 
					^ (note testFindMaxHeightTill: aMNNoteMorph maxHeight: (((self noteLayout lines first) asFloat) min: aFloat))];
				ifFalse: [ ^ (self noteLayout lines first) min: aFloat ]
			] ifFalse: [^ (self noteLayout lines first) min: aFloat ].
	].

	^ nil