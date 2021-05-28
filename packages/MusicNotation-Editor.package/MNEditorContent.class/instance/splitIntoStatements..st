as yet unclassified
splitIntoStatements: aString
	| list  statement waitingFor |
	
	list := OrderedCollection new. 
	statement := ''.
	waitingFor := Stack new.
	
	aString do: [ :symbol | 
		statement:= statement, symbol.
		(waitingFor isEmpty and: [symbol = $.])
			ifTrue: [list addLast: statement. statement := ''].
		(waitingFor isEmpty not and: [symbol = waitingFor top])
			ifTrue: [waitingFor pop].
		waitingFor := self pushBracketsToStack: waitingFor symbol: symbol.
	].
	^ list