drawing
drawOn: aCanvas
	
	super drawOn: aCanvas.
	self partMorph changed.
	self triole: (OrderedCollection new add: self; yourself).
	self beam: (OrderedCollection new add: self; yourself).
	
	self note tieStart ifTrue: [
		self drawBowTo: self findNextTieStop.
	].

	self note slurStart ifTrue: [
		self drawBowTo: self findNextSlurStop.
	].

	self note trioleStart ifTrue: [
		self addNotesToTriole: self position: 3.0.
		self drawTriole.
		].

	self drawBeam.