drawing
firstLedgerLine
	| line firstPositivLedgerLine |
	line := self lines at: 1.
	firstPositivLedgerLine := 3.
	^{firstPositivLedgerLine. line ceiling} min.