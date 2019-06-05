drawing
updateIfNeeded
	self update.
	self isValid ifFalse: [ self update ].
	self assert: self isValid.