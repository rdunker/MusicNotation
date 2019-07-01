evaluating
evaluateContents
	self initializeBindings.
	Compiler evaluate: self contents for: self notifying: self.
	self project: self mncontext project.