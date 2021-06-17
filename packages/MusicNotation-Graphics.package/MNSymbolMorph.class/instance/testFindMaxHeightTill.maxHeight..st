calculating
testFindMaxHeightTill: aMNNoteMorph maxHeight: aFloat
	| note |
	note := self nextSymbol.
	note ifNotNil: [
		(note isKindOf: MNNoteMorph) ifTrue: [
			((self position x = aMNNoteMorph position x) not) 
				ifTrue: [ 
					^ note testFindMaxHeightTill: aMNNoteMorph maxHeight: ((self noteLayout lines first) asFloat min: aFloat)];
				ifFalse: [ ^ self"(self noteLayout lines first) min: aFloat" ]
			] ifFalse: [^ 2.0 ].
	].

	^ nil