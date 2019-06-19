copying
deepCopy
	self halt: 'Deep copy does not work with cyclic structures (use #copy instead)'.
	^ self copy