as yet unclassified
contentsList
	| list newList |
	
	list := (self contents splitBy: '.') 
		asOrderedCollection 
		removeLast;
		yourself.
	newList:= list collect: [:statement | statement, '.'].
	^ newList