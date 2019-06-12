drawing
drawLedgerLinesWith: aDrawer
	self drawLedgerLines: self leftNoteheads other: self rightNoteheads with: aDrawer.
	self moveLeftWidthWith: aDrawer.
	self drawLedgerLines: self rightNoteheads other: self leftNoteheads with: aDrawer.