calculating
beamIsDiagonalTill: aMNNoteMorph pitch: aFloat 
	| note |
	note := self lastSymbol.
	note
		ifNotNil: [(note isKindOf: MNNoteMorph)
				ifTrue: [(self = aMNNoteMorph) not
						ifTrue: [self noteLayout lines first - note noteLayout lines first = aFloat
								ifTrue: [^ note beamIsDiagonalTill: aMNNoteMorph pitch: aFloat];
								
								ifFalse: [^ false]]
						ifFalse: [^ true]]
				ifFalse: [^ true]].
	^ nil