arithmetic
n
	^ MNNoteBuilder context: self context pitches: (self copyPitches do: #setNatural).