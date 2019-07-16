visiting
createChordCollectionForNote: aNote
	| notes |
	aNote pitches ifEmpty: [ ^ OrderedCollection with: aNote ].
	notes := aNote pitches collect: [ :pitch |
		aNote copy
			pitches: (Set with: pitch copy);
			chordPart: true ].
	notes first chordPart: false.
	^ notes