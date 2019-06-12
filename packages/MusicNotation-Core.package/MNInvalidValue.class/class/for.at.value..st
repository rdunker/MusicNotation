as yet unclassified
for: anObject at: aSelector value: value
	^ self signal: anObject class asString, ' ', aSelector, ': ', value