accessing
drawOn: aCanvas
	super drawOn: aCanvas.
	self partMorph changed.
	
	self note tieStart ifTrue: [
		self drawMultiObjectTo: self findNextTieStop type: #tie.
	].

	self note slurStart ifTrue: [
		self drawMultiObjectTo: self findNextSlurStop type: #slur.
	].

	self note beamStart ifTrue: [
		self drawMultiObjectTo: self findNextBeamStop type: #beam.
	].