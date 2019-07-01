evaluating
evaluateContents
	| environment newStatus |
	environment := self createEnvironment.
	
	newStatus := self evaluateToStatus: self methodCode in: environment.
	
	newStatus isSuccess
		ifTrue: [ self project: environment context project ].
	self status: newStatus.