accessing
type

	self duration numerator == 1 ifTrue: [ ^ MNNote noteTypes at: self duration denominator ].
	self duration numerator == 3 ifTrue: [ ^ MNNote noteTypes at: self duration denominator / 2]