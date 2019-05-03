initialize-release
initialize
	super initialize.
	
	self notes: OrderedCollection new;
		clefs: OrderedCollection new;
		divisions: 1;		
		addClef: MNClef new;
		key: 0