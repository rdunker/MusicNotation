tests
testNumDots
	| note |
	note := MNNote new.
	self baseDurations do: [ :baseDuration |
		self dotFactors keysAndValuesDo: [ :index :dotFactor |
			note duration: baseDuration * dotFactor.
			self assert: index - 1 equals: note numDots ]].