drawing
lastLedgerLine
	| line firstNegativeLedgerLine |
	line := self lines first.
	firstNegativeLedgerLine := -3.
	^{firstNegativeLedgerLine. line} max.