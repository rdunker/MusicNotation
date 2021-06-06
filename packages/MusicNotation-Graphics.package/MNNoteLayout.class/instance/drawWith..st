drawing
drawWith: aDrawer
	super drawWith: aDrawer.
	
	aDrawer move: aDrawer font noteLineHeightUnits / 4.
	
	self
		ifRest: [ self drawRestWith: aDrawer ]
		ifNote: [ self drawNoteWith: aDrawer ].
		
	self drawDotsWith: aDrawer.
	self drawDynamicsWith: aDrawer.