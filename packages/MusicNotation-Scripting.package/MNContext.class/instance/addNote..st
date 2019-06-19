accessing
addNote: aNote
	(self measure notes detectSum: #duration) >= self measure time
		ifTrue: [ self part addMeasure: self measure copyEmpty ].
		
	self measure addNote: aNote.
	
	^ MNNoteStatement context: self note: aNote