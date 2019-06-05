drawing
drawWith: aDrawer
	self updateIfNeeded.
	
	aDrawer move: aDrawer font noteLineHeightUnits / 4.
	
	self lines
		ifEmpty: [ self drawRestWith: aDrawer ]
		ifNotEmpty: [ self drawNoteWith: aDrawer ].
		
	self drawDotsWith: aDrawer.