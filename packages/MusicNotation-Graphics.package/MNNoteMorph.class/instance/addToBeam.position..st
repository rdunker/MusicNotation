beams & bows
addToBeam: aMNNoteMorph position: aNumber
	| offset |
	offset := 1.0.
	(aMNNoteMorph beam) add: self.
	self ignoreBeam: true.
	self addNotesToObject: #beam fromNote: aMNNoteMorph position: (aNumber - offset).
