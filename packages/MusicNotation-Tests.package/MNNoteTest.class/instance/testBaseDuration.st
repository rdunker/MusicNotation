tests
testBaseDuration
	| note |
	note := MNNote new.
	self baseDurations do: [ :baseDuration |
		self dotFactors do: [ :dotFactor |
			note duration: baseDuration * dotFactor.
			self assert: baseDuration equals: note baseDuration ]].