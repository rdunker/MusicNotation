accessing
part: anObject
	part == anObject ifTrue: [ ^ self ].
	part ifNotNil: [ part removeDependent: self ].
	part := anObject.
	part ifNotNil: [ part addDependent: self ].
	self updateMeasures.