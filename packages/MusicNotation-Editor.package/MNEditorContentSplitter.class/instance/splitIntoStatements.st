splitting
splitIntoStatements
	self content do: [ :symbol | 
		self statement: self statement, symbol.
		symbol = $" 
			ifTrue: [self splitAfterQuotes]
			ifFalse: [self splitAfterSymbol: symbol]].
	^ self list