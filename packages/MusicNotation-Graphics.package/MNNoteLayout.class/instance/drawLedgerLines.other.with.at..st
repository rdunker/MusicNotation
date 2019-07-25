drawing
drawLedgerLines: lines other: other with: aDrawer at: aBlock
	| line |
	line := aBlock value: lines.
	other ifNotEmpty: [
		(aBlock value: other) abs floor > line abs
			ifTrue: [ line := line + line sign ]].
	self drawLedgerLinesUpTo: line with: aDrawer.