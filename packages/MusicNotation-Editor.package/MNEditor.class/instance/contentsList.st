as yet unclassified
contentsList
	^ (self contents splitBy: '.') 
		asOrderedCollection 
		removeLast;
		yourself