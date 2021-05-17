evaluating
evaluateContentList
	| environment newStatus |
	environment := self createEnvironment.
	self resetStatementMapping.
	
	(1 to: self contentsList size) do:
		[ :i | 
			newStatus := self evaluateToStatus: (self statementMethodCode: (self contentsList at: i)) in: environment.
			newStatus isSuccess
				ifTrue: [ self project: environment context project ]
				ifFalse: [ self status: newStatus. self status statementNumber: i. ^ self ].
			self status: newStatus. ]