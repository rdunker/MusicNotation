beams & bows
checkForMultiObjects
	| notesPerTriole |
	self note tieStart ifTrue: [
		self drawBowTo: self findNextTieStop.
	].

	self note slurStart ifTrue: [
		self drawBowTo: self findNextSlurStop.
	].

	self note triole isEmpty ifFalse: [
		notesPerTriole := 3.0.
		self addNotesToObject: #triole fromNote: self position: notesPerTriole.
		self drawTriole.
		].

	self drawBeam.