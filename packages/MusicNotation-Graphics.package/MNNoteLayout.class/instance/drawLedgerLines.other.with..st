drawing
drawLedgerLines: lines other: other with: aDrawer
	lines ifEmpty: [ ^ self ].
	
	#(first last) do: [ :symbol |
		self drawLedgerLines: lines other: other with: aDrawer at: symbol ].