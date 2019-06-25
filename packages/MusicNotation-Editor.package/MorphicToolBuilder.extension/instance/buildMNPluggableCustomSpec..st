*MusicNotation-Editor
buildMNPluggableCustomSpec: aSpec
	| widget |
	widget := aSpec morphClass on: aSpec model.
	
	self register: widget id: aSpec name.
	
	aSpec applyCustomPropsTo: widget.
	
	aSpec color isColor
		ifTrue: [ widget color: aSpec color ].
	self buildHelpFor: widget spec: aSpec. 
	
	self setFrame: aSpec frame in: widget.
	self setLayoutHintsFor: widget spec: aSpec.
	self parent ifNotNilDo: [ :p | self addAll: widget to: p ].
	
	^ widget