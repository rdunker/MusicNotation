comparing
= anObject
	(((anObject isKindOf: MNKey) not) or: [anObject isEmpty]) ifTrue: [ ^ false ].
	self isEmpty ifTrue: [ ^ anObject isEmpty ].
	^ self equalTo: anObject