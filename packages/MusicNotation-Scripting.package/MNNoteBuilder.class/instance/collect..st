accessing
collect: aBlock
	^ self class context: self context pitches: (self copyPitches do: aBlock)