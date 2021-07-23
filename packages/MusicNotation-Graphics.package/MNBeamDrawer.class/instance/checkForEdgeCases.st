updating
checkForEdgeCases
	| upNotes downNotes |
	
	downNotes := self notes select: [ :note | note noteLayout up not].
	upNotes := self notes select: [ :note | note noteLayout up].
	self checkForEdgeCases: downNotes.
	self checkForEdgeCases: upNotes.