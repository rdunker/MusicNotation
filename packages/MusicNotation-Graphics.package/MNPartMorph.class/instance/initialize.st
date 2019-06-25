initialization
initialize
	super initialize.
	
	self
		layoutPolicy: MNFlexLayout new;
		hResizing: #spaceFill;
		vResizing: #spaceFill.