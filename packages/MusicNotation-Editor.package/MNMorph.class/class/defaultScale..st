accessing
defaultScale: anObject
	DefaultScale := anObject asFloat.
	self changed: #defaultScale.
	self allSubclassesDo: [ :each |
		each allInstancesDo: #scaleChanged ].
	World redrawLater.