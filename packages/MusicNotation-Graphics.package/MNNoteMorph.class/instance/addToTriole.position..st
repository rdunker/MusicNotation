beams & bows
addToTriole: aMNNoteMorph position: aNumber
	(aMNNoteMorph triole) add: self.
	self ignoreTriole: true.
	self addNotesToObject: #triole fromNote: aMNNoteMorph position: (aNumber - 1.0).