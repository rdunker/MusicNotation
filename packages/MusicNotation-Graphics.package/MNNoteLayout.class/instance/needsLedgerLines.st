drawing
needsLedgerLines
	| ledgerLineThreshold line |
	ledgerLineThreshold := 3.
	line := self lines at: 1.
	^(line abs) >= ledgerLineThreshold