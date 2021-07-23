tests
testTextContents
	| editor |
	
	editor := MNEditor new.
	editor textContents: '123'.
	self assert: '123' equals: editor contents.