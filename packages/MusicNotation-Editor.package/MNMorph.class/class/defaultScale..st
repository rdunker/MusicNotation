accessing
defaultScale: anObject
	DefaultScale := anObject.
	self changed: #defaultScale.
	World redrawLater.