visiting
createNoteCollection: aCollection
	| notes |
	notes := OrderedCollection new.
	aCollection do: [ :note |
		notes addAll: (self createChordCollectionForNote: note) ].
	^ notes