evaluating
evaluateContents
	| environment |
	environment := self createEnvironment.
	Compiler evaluate: self contents in: environment notifying: nil logged: false.
	self project: environment context project.