accessing
drawOn: aCanvas
	super drawOn: aCanvas.
	self partMorph changed.
	self beam: (OrderedCollection new add: self; yourself).
	
	self note tieStart ifTrue: [
		self drawBowTo: self findNextTieStop.
	].

	self note slurStart ifTrue: [
		self drawBowTo: self findNextSlurStop.
	].

	self drawBeam.