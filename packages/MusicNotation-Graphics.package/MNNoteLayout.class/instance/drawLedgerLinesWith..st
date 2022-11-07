drawing
drawLedgerLinesWith: aDrawer
	self needsLedgerLines ifTrue: [
		self firstLedgerLine to: self lastLedgerLine do: [:index |
			 self drawLedgerLine: index With: aDrawer.
		]
	].