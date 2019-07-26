I am an environment that evaluates and executes the code given to me.
Hint: I replace the scripting messages with MNNoteBuilders through the bindings set in MNEnvironment>>setPitchBindings: if possible.

Instance Variables
	bindings:		IdentityDictionary (Symbol -> MNNoteBuilder)
	context:		MNContext

bindings
	- This contains a mapping from all accepted symbols of myself to the related MNNoteBuilder.

context
	- This is the context in which the given code will be evaluated.
