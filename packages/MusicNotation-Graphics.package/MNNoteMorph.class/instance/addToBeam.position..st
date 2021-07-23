beams & bows
addToBeam: aMNNoteMorph position: aNumber
	(aMNNoteMorph beam) add: self.
	self ignoreBeam: true.
	self addNotesToObject: #beam fromNote: aMNNoteMorph position: (aNumber - 1.0)