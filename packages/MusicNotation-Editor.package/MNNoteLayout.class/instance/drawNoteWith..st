drawing
drawNoteWith: aDrawer
	
	
	aDrawer resetPositionAfter: [
		self drawLedgerLinesWith: aDrawer ].
	
	self drawNoteheads: self leftNoteheads with: aDrawer.
	aDrawer moveCodePoint: self notehead.
	aDrawer moveLineBack.
	
	self note baseDuration < 1
		ifTrue: [ self drawStemWith: aDrawer ].
	self drawFlagWith: aDrawer.
	
	self drawNoteheads: self rightNoteheads with: aDrawer.
	(self rightNoteheads
		ifEmpty: [ self flagCodePoint ]
		ifNotEmpty: [ self notehead ])
	ifNotNilDo: [ :codePoint | aDrawer moveCodePoint: codePoint ].