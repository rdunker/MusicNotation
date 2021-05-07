initialization
initialize

	super initialize.
	self on: #mouseDown send: #showClickedMessage to: self.