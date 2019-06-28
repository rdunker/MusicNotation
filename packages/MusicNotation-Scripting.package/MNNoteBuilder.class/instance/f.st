arithmetic
f
	^ MNNoteBuilder context: self context pitches: (self copyPitches do: #setFlat).