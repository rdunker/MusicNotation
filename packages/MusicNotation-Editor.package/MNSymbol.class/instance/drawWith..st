as yet unclassified
drawWith: aDrawer
	self codePointsAndOffsets 
		do: [ :each |
			aDrawer drawCodePoint: each first at: each second ].
