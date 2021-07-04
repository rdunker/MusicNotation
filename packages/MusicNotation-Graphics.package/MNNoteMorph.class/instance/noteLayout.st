accessing
noteLayout
	^ noteLayout ifNil: [
		noteLayout := MNNoteLayout new
			note: self note;
			noteMorph: self;
			yourself ]