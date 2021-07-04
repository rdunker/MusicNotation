calculating
calculateNumberHeight: aMNNote
	| offset denom flagOffset |

	flagOffset := 875.

	denom := aMNNote duration denominator.
	self lines isEmpty ifTrue: [offset := 0] ifFalse: [
		(denom <= 4 or: (self isStemDown)) ifTrue: [offset := flagOffset] ifFalse: [offset := 0].
		offset := offset + (self calculateOffset: aMNNote).
		]. 

	^ offset