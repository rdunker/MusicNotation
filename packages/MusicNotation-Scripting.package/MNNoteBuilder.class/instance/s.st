arithmetic
s
	^ MNNoteBuilder context: self context pitches: (self copyPitches do: #setSharp).