initialize-release
initialize
	super initialize.
	
	self
		bindings: IdentityDictionary new;
		context: MNContext new;
		initializePitchBindings.