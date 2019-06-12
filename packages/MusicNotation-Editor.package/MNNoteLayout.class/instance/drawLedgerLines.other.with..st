drawing
drawLedgerLines: lines other: other with: aDrawer
	| line |
	lines ifEmpty: [ ^ self ].
	
	line := lines first.
	other ifNotEmpty: [
		other first abs floor > line abs
			ifTrue: [ line := line + line sign ]].
	self drawLedgerLinesUpTo: line with: aDrawer.
	
	line := lines last.
	other ifNotEmpty: [
		other last abs floor > line abs
			ifTrue: [ line := line + line sign ]].
	self drawLedgerLinesUpTo: line with: aDrawer.