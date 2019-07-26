tests
testIsDotted
	| note |
	note := MNNote new.
	self baseDurations do: [ :baseDuration |
		self dotFactors do: [ :dotFactor |
			note duration: baseDuration * dotFactor.
			self assert: dotFactor isInteger not equals: note isDotted ]].