enumerating
notesDo: aBlock
	self accept: (MNNoteVisitor newWith: aBlock).