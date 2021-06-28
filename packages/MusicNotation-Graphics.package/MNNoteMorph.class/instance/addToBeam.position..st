beams & bows
addToBeam: aMNNoteMorph position: aNumber
	(aMNNoteMorph beam) add: self.
	self ignoreBeam: true.
	self addNotesToBeam: (aMNNoteMorph) position: (aNumber - 1.0)