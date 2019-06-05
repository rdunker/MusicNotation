as yet unclassified
drawWith: aDrawer
	aDrawer move: aDrawer font noteLineHeightUnits.
	self codePointsAndOffsets 
		do: [ :each |
			aDrawer drawCodePoint: each first at: each second ].