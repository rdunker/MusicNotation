accessing
measure: anObject
	measure == anObject ifTrue: [ ^ self ].
	measure ifNotNil: [ measure removeDependent: self ].
	measure := anObject.
	measure ifNotNil: [ measure addDependent: self ].
	self updateParts.