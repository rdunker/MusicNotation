beams & bows
drawBeam
	self setupBeamVariables.
	(self ignoreBeam or: [self isPause]) ifFalse: [
		(self beam size ~= 1 and: [self note isEighthOrShorter]) ifTrue: [
			(MNBeamDrawer canvas: self partCanvas notes: self beam reverse) draw]].