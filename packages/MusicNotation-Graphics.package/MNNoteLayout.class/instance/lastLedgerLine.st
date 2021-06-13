drawing
lastLedgerLine
	| line firstNegativeLedgerLine |
	line := self lines at: 1.
	firstNegativeLedgerLine := -3.
	^{firstNegativeLedgerLine. line} max.