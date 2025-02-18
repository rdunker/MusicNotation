private
privateParent: anObject
	self parent
		ifNotNil: [ MNError signal: self asString, ' already has a parent' ].
	(anObject isKindOf: self class parentClass)
		ifFalse: [ MNInvalidValue for: self at: #parent value: anObject
			description: 'expected ', self class parentClass, ' as parent' ].
	self parent: anObject.