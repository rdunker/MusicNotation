beams & bows
checkForMultiObjects
	self note tieStart ifTrue: [
		self drawBowTo: self findNextTieStop.
	].

	self note slurStart ifTrue: [
		self drawBowTo: self findNextSlurStop.
	].

	self note triole isEmpty ifFalse: [
		self addNotesToTriole: self position: 3.0.
		self drawTriole.
		].

	self drawBeam.