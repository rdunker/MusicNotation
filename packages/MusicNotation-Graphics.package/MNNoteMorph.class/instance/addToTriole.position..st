beams & bows
addToTriole: aMNNoteMorph position: aNumber
	| offset |
	offset := 1.0.
	(aMNNoteMorph triole) add: self.
	self ignoreTriole: true.
	self addNotesToTriole: (aMNNoteMorph) position: (aNumber - offset)