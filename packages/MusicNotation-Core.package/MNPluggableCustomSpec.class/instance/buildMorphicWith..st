building
buildMorphicWith: aBuilder
	| widget |
	widget := self morphClass on: self model.
	
	aBuilder register: widget id: self name.
	
	self applyCustomPropsTo: widget.
	
	self color isColor
		ifTrue: [ widget color: self color ].
	aBuilder buildHelpFor: widget spec: self. 
	
	aBuilder setFrame: self frame in: widget.
	aBuilder setLayoutHintsFor: widget spec: self.
	aBuilder parent ifNotNil: [ :p | aBuilder add: widget to: p ].
	
	^ widget