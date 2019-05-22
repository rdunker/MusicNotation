instance creation
newWith: aBlock
	^ self new
		block: aBlock;
		yourself