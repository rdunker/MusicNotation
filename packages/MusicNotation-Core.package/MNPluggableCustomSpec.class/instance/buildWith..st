building
buildWith: aBuilder
	(aBuilder isKindOf: MorphicToolBuilder) ifTrue: [ ^ self buildMorphicWith: aBuilder ].
	
	self halt: 'buildWith: ', aBuilder, ' is not implemented'.