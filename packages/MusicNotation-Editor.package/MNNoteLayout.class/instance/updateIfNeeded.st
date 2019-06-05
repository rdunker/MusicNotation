drawing
updateIfNeeded
	self isValid ifFalse: [ self update ].
	self assert: self isValid.