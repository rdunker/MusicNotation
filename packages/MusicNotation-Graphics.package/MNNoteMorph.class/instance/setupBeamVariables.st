beams & bows
setupBeamVariables
	| notesPerBeam |
	notesPerBeam := 4.0.
	(self ignoreBeam or: [self isPause]) ifFalse: [
		self addNotesToBeam: self position: notesPerBeam].