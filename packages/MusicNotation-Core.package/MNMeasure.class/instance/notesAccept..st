visiting
notesAccept: aVisitor
	self notes do: [ :each | each notesAccept: aVisitor ].