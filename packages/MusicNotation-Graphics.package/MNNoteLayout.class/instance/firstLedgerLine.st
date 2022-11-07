drawing
firstLedgerLine
	| line firstPositivLedgerLine |
	line := self lines first.
	firstPositivLedgerLine := 3.
	^{firstPositivLedgerLine. line ceiling} min.