visiting
notesAccept: aVisitor
	self parts do: [ :each | each notesAccept: aVisitor ].