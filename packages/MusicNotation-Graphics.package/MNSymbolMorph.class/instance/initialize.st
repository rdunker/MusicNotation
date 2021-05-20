as yet unclassified
initialize 
	super initialize.
	self on: #mouseDown send: #select to: self.