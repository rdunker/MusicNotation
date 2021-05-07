initialization
initialize
	super initialize.
	
	self
		layoutPolicy: TableLayout new;
		clipSubmorphs: true.
	self on: #mouseDown send: #testMessage to: self.