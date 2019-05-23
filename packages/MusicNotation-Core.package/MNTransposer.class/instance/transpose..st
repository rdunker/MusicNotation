converting
transpose: aPitch
	| value |
	value := self halfStepsOf: aPitch.
	value := value + self offset.
	self setHalfSteps: value of: aPitch.