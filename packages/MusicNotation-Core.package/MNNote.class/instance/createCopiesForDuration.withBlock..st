converting
createCopiesForDuration: aDuration withBlock: aBlock
	| newCopy |
	newCopy := self copy duration: aDuration.
	newCopy hasValidDuration
		ifTrue: [
			aBlock value: newCopy.
			^ OrderedCollection with: newCopy ]
		ifFalse: [ ^ self createCopiesRecursivelyForDuration: aDuration withBlock: aBlock ]