initialize-release
initialize
	super initialize.
	
	self
		lastStart: 0@0;
		lastPosition: 0@0;
		shape: OrderedCollection new.