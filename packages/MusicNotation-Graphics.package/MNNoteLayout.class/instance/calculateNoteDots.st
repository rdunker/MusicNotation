calculating
calculateNoteDots
	| spaces dotSet offset |
	dotSet := Set new.
	spaces := self lines collect: [ :line | line + (1/2) ].
	self sortSpaces: spaces.
	
	offset := 0.
	[ spaces isEmpty ] whileFalse: [
		spaces := spaces reject: [ :space | 
			self addSpace: space to: dotSet withOffset: offset ].
		offset := offset + 1 ].
	
	^ dotSet collect: [ :space | space - (1/2) ] as: OrderedCollection
	