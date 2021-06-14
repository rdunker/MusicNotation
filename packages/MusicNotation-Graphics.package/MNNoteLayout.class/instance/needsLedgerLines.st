drawing
needsLedgerLines
	| ledgerLineThreshold line |
	ledgerLineThreshold := 3.
	line := self lines first.
	^(line abs) >= ledgerLineThreshold