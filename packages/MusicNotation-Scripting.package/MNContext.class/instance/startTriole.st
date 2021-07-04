accessing
startTriole
	| a b |
	b := self measure notes before: self lastNote.
	a := self measure notes before: b.
	a setTrioled.
	b setTrioled.
	self lastNote setTrioled.
	self lastNote trioleStart: true.