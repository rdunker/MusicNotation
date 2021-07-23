beams & bows
setupBeamVariables
	(self ignoreBeam or: [self isPause]) ifFalse: [
		self addNotesToObject: #beam fromNote: self position: 4.0].