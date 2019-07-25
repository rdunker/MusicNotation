instance creation
for: anObject at: aSelector value: value description: aString
	^ self signal: anObject class asString, ' ', aSelector, ' (', value , '): ', aString