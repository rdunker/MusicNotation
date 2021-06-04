instance creation
newWith: codePoint
	^ self new
		dynamicSign: codePoint;
		yourself