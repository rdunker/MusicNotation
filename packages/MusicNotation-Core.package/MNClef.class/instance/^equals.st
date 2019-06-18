comparing
= anObject
	^ (anObject isKindOf: MNClef)
		and: [ self line = anObject line ]
		and: [ self sign = anObject sign ]