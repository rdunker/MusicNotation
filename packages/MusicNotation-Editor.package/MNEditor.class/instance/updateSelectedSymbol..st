as yet unclassified
updateSelectedSymbol: aMNNote
	| lines |
	
	lines := self statementsOf: aMNNote.
	self updateContentsSelect: lines.