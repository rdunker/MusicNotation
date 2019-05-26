drawing
drawWith: aDrawer
	self update.
	self isValid ifFalse: [ self update ].
	self assert: self isValid.
	
	aDrawer move: 250.
	
	self lines
		ifEmpty: [ self drawRestWith: aDrawer ]
		ifNotEmpty: [ self drawNoteWith: aDrawer ].
		
	self drawDotsWith: aDrawer.