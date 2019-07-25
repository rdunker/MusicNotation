instance creation
for: anObject at: aSelector
	^ self for: anObject at: aSelector value: (anObject perform: aSelector)