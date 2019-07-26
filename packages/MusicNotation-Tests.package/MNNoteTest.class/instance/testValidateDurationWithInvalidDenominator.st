tests
testValidateDurationWithInvalidDenominator
	| note |
	note := MNNote new.
	self baseDurations do: [ :baseDuration |
		self invalidDotFactors do: [ :dotFactor |
			note duration: baseDuration / dotFactor.
			self should: [ note validateDuration ] raise: MNInvalidValue ]].