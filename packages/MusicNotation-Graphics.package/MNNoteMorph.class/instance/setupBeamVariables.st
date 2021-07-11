beams & bows
setupBeamVariables
	(self ignoreBeam or: [self isPause]) ifFalse: [
		self addNotesToBeam: self position: 4.0].