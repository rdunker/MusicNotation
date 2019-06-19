instance creation
context: aContext step: anObject
	^ self new
		context: aContext;
		step: anObject;
		yourself