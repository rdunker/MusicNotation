transposing
getIndex: aNoteOrIndex

	"If aNoteOrIndex is a MNNote, returns index of this Note in the measure.
	If it is a valid Index, returns that index."
	| index |
			
	(aNoteOrIndex isKindOf: MNNote)
		ifTrue: [ 
			index := self notes indexOf: aNoteOrIndex.
			index == 0 ifTrue: [ self error: 'Note is not part of this measure!' ] ] 
		ifFalse: [ 
			aNoteOrIndex isInteger 
				ifTrue: [ 
					( aNoteOrIndex >= 1 and:  [aNoteOrIndex < self notes size] )
						ifTrue: [ index := aNoteOrIndex ] 
						ifFalse: [ self error: 'Not a valid Index!'] ]
				ifFalse: [ self error: 'Neither an Index nor a MNNote!'] ].
	^ index
	