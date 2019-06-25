visiting
visitPart: aPart
	| morph |
	morph := MNPartMorph part: aPart.
	
	self addAll: aPart measures to: morph.
	
	^ morph