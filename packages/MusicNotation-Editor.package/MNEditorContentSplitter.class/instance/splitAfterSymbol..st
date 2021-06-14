splitting
splitAfterSymbol: aSymbol
	(self waitingFor isEmpty and: [aSymbol = $.])
		ifTrue: [self list addLast: self statement. self statement: ''].
	(self waitingFor isEmpty not and: [aSymbol = self waitingFor top])
		ifTrue: [self waitingFor pop].
	(self topOfStack = $") not
		ifTrue: [self pushBracketsToStack: aSymbol.]