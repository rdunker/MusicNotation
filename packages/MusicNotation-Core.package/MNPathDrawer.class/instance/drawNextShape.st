as yet unclassified
drawNextShape
	| type |
	type := self pathComponents removeFirst.
	self perform: (#draw_ , type) asSymbol.