comparing
= anObject
	(anObject isKindOf: MNKey) ifFalse: [ ^ false ].
	
	self isEmpty ifTrue: [ ^ anObject isEmpty ].
	
	anObject isEmpty ifTrue: [ ^ false ].
	
	^ self equalTo: anObject