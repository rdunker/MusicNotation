drawing
drawLedgerLinesWith: aDrawer
	| lines |
	lines := self lines at:1.
	
	self needsLedgerLines ifTrue: [
		self firstLedgerLine to: self lastLedgerLine do: [:index |
			 self drawLedgerLine: index With: aDrawer.
		]
	].