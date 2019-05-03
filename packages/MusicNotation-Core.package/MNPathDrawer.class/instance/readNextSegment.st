as yet unclassified
readNextSegment
	| type |
	self skipSeperatorSequence.
	type := self path next.
	self perform: (#read_ , type) asSymbol.