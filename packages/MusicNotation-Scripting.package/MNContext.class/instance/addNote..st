accessing
addNote: aNote
	self addNoteRecursively: aNote.
	
	^ MNNoteStatement context: self note: aNote