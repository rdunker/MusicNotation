drawing
drawWith: aDrawer
	self updateIfNeeded.
	
	aDrawer move: aDrawer font noteLineHeightUnits / 4.
	
	self
		ifRest: [ self drawRestWith: aDrawer ]
		ifNote: [ self drawNoteWith: aDrawer ].
		
	self drawDotsWith: aDrawer.