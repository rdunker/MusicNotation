beams & bows
drawBeam
	(self ignoreBeam or: [self isPause]) ifFalse: [
		self addNotesToBeam: self position: 4.0.
		self beam size = 1 ifFalse: [
				(MNBeamDrawer canvas: self partCanvas notes: self beam) draw]].