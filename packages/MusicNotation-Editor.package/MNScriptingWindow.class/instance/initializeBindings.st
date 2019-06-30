initialize-release
initializeBindings

	
	self bindings: Dictionary new.
	self mncontext: MNContext new.
	self bindings at: 'this' put: self.
	self bindings at: 'context' put: self mncontext.
	self initializePitchBindings.