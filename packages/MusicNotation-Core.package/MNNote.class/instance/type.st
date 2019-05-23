accessing
type
"if a note is dotted, its type can be gotten by taking half of the denominator, i.e. a dotted quarter has a length of 3/8"
	self isDotted 
		ifTrue: [ ^ MNNote noteTypes at: self duration denominator / 2 ]
		ifFalse: [ ^ MNNote noteTypes at: self duration denominator ]