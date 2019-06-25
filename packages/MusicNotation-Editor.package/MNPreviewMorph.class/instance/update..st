updating
update: what
	what == self projectSelector
		ifTrue: [ self updateProject ].
	^ super update: what