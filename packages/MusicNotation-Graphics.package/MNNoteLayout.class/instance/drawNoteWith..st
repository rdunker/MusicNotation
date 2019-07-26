drawing
drawNoteWith: aDrawer
	self drawAccidentalsWith: aDrawer.
	
	aDrawer resetPositionAfter: [
		self drawLedgerLinesWith: aDrawer ].
	
	self drawNoteheads: self leftNoteheads with: aDrawer.
	self moveLeftWidthWith: aDrawer.
	
	(self note baseDuration < 1)
		ifTrue: [ self drawStemWith: aDrawer ].
	self drawFlagWith: aDrawer.
	
	self drawNoteheads: self rightNoteheads with: aDrawer.
	aDrawer move: (self rightWidthFor: aDrawer font).