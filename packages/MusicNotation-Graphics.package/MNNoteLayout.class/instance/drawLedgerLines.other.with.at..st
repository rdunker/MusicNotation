drawing
drawLedgerLines: aCollection other: otherBlock with: aDrawer at: aBlock
	| line |
	line := aBlock value: aCollection.
	otherBlock ifNotEmpty: [
		(aBlock value: otherBlock) abs floor > line abs
			ifTrue: [ line := line + line sign ]].
	self drawLedgerLinesUpTo: line with: aDrawer.