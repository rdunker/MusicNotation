accessing
project: anObject
	project == anObject ifTrue: [ ^ self ].
	project ifNotNil: [ project removeDependent: self ].
	project := anObject.
	project ifNotNil: [ project addDependent: self ].
	self updateParts.