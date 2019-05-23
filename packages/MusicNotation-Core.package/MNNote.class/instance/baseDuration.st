accessing
baseDuration
	"the duration of the note without any dots applied"
	self validateDuration.
	^ self isDotted
		ifTrue: [ (self duration numerator + 1) / (self duration denominator * 2) ]
		ifFalse: [ self duration ]