instance creation
for: anObject at: aSelector description: aString
	^ self for: anObject at: aSelector value: (anObject perform: aSelector) description: aString