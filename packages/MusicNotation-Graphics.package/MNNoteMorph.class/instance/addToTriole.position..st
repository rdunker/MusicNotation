beams & bows
addToTriole: aMNNoteMorph position: aNumber
	(aMNNoteMorph triole) add: self.
	self ignoreTriole: true.
	self addNotesToTriole: (aMNNoteMorph) position: (aNumber - 1.0)