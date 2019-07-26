fixtures
createChordFrom: aCollection withContext: aContext
	| noteBuilder |
	noteBuilder := MNNoteBuilder context: aContext.
	aCollection do: [ :string |
		noteBuilder := noteBuilder + (MNNoteBuilder context: aContext pitchFrom: string) ].
	^ noteBuilder