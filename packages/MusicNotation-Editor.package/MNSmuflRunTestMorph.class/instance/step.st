as yet unclassified
step
	self index: self index + 1.
	self index > self keys size
		ifTrue: [ self halt: 'done :D'].
	self codePoint: (self keys at: self index).
	self changed.