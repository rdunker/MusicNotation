evaluating
evaluateContentList
	| environment newStatus |
	environment := self createEnvironment.
	self content resetStatementMapping.
	
	(1 to: self content contentsList size) do:
		[ :i | 
			newStatus := self evaluateToStatus: (self statementMethodCode: (self content contentsList at: i)) in: environment.
			newStatus isSuccess
				ifTrue: [ self project: environment context project ]
				ifFalse: [ self status: newStatus. self status applyStyleTo: self statement: i. self status statementNumber: i. ^ self ].
			self status: newStatus. ]