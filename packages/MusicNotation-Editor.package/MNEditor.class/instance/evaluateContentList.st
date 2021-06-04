evaluating
evaluateContentList
	| environment |
	environment := self createEnvironment.
	self content resetStatementMapping.
	
	(1 to: self content contentsList size) do: [ :each | self evaluateStatement: each in: environment ]