drawing
drawLedgerLines: aCollection other: aBlock with: aDrawer
	aCollection ifEmpty: [ ^ self ].
	
	#(first last) do: [ :symbol |
		self drawLedgerLines: aCollection other: aBlock with: aDrawer at: symbol ].