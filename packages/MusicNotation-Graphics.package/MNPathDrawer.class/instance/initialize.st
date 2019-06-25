initialize-release
initialize
	super initialize.
	
	self
		lastStart: 0@0;
		lastPosition: 0@0;
		lastControlPoint: nil;
		shape: OrderedCollection new.