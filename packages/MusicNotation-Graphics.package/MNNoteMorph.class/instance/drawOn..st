accessing
drawOn: aCanvas
	super drawOn: aCanvas.
	self partMorph changed.
	
	self note tieStart ifTrue: [
		self drawMultiObjectEndNote: self findNextTieStop.
	].

	self note slurStart ifTrue: [
		self drawMultiObjectEndNote: self findNextSlurStop.
	].

	self note beamStart ifTrue: [
		self drawMultiObjectEndNote: self findNextBeamStop.
	].