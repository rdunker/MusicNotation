beams & bows
setupBeamVariables
	| notesPerBeam |
	notesPerBeam := 4.0.
	(self ignoreBeam or: [self isPause]) ifFalse: [
		self addNotesToObject: #beam fromNote: self position: notesPerBeam].
