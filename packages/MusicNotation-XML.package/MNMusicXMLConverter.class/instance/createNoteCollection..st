visiting
createNoteCollection: aCollection
	| notes |
	notes := OrderedCollection new.
	aCollection do: [ :note |
		note pitches
			ifEmpty: [ notes add: note ]
			ifNotEmptyDo: [ :pitches | pitches keysAndValuesDo: [ :key :pitch |
				| newNote |
				newNote := note copy.
				newNote pitches: (Set with: pitch copy).
				key > 1 ifTrue: [ newNote chordPart: true ].
				notes add: newNote ]]].
	^ notes