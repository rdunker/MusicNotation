drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	
	self partMorph changed.
	self triole: (OrderedCollection new add: self; yourself).
	self beam: (OrderedCollection new add: self; yourself).
	self checkForMultiObjects.