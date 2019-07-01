initialize-release
initializeBindings
	self bindings add: #context => self context.
	self bindings add: #project => self context project.
	self initializePitchBindings.