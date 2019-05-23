enumerating
pitchesDo: aBlock
	self accept: (MNPitchVisitor newWith: aBlock).