beams & bows
addToTriole: aMNNoteMorph position: aNumber
	| offset |
	offset := 1.0.
	(aMNNoteMorph triole) add: self.
	self ignoreTriole: true.
	self addNotesToObject: #triole fromNote: aMNNoteMorph position: (aNumber - offset).
