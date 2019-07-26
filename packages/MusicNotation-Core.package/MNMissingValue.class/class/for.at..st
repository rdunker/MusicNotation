instance creation
for: anObject at: aSelector
	^ self signal: anObject class asString, ' ', aSelector