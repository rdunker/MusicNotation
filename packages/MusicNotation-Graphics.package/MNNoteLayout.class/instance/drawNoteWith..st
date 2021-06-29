drawing
drawNoteWith: aDrawer
	self drawAccidentalsWith: aDrawer.

	aDrawer resetPositionAfter: [
		self drawLedgerLinesWith: aDrawer ].
	self leftNoteheads ifNotEmpty: [
		self drawNoteheads: self leftNoteheads with: aDrawer.
		self moveLeftWidthWith: aDrawer.].

	self rightNoteheads ifNotEmpty: [
		self drawNoteheads: self rightNoteheads with: aDrawer.
		self moveRightWidthWith: aDrawer.].

	(self note baseDuration < 1)
		ifTrue: [ self drawStemWith: aDrawer ].
	(self drawFlag) ifTrue: [self drawFlagWith: aDrawer].
