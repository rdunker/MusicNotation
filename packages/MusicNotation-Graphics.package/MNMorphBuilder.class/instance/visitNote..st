visiting
visitNote: aNote
	| noteMorph |
	noteMorph := MNNoteMorph note: aNote.
	aNote morph: noteMorph.
	^ noteMorph