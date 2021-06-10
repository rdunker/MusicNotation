content list
splitIntoStatements: aString
	| list statement waitingFor |
	
	list := OrderedCollection new. 
	statement := ''.
	waitingFor := Stack new.

	aString do: [ :symbol | 
		statement:= statement, symbol.
		symbol = $" 
		ifTrue: [ (waitingFor isEmpty not and: [waitingFor top = $"]) 
				 ifTrue:[waitingFor pop. list addLast: statement. statement:='']
				ifFalse:[waitingFor push: symbol.]]
		ifFalse: [
		(waitingFor isEmpty and: [symbol = $.])
			ifTrue: [list addLast: statement. statement := ''].
		(waitingFor isEmpty not and: [symbol = waitingFor top])
			ifTrue: [waitingFor pop].
		((self topOfStack: waitingFor) = $") not
		ifTrue: [waitingFor := self pushBracketsToStack: waitingFor symbol: symbol.]
		]
	].
	^ list