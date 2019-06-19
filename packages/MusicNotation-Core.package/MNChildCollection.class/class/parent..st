instance creation
parent: anObject
	^ (super new: 4)
		privateParent: anObject;
		yourself