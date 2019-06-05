drawing
drawLedgerLinesWith: aDrawer
	self leftNoteheads
		ifNotEmpty: [
			self drawLedgerLines: self leftNoteheads other: self rightNoteheads with: aDrawer.
			aDrawer moveCodePoint: self notehead.
			aDrawer moveLineBack ].
	self drawLedgerLines: self rightNoteheads other: self leftNoteheads with: aDrawer.