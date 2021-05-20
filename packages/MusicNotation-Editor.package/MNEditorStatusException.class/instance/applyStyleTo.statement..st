accessing
applyStyleTo: anEditor statement: anInteger
	| start stop |
	start := self range start - anEditor methodCodePrefix size + (self rangeOffsetIn: anEditor statement: anInteger).
	stop := self range stop - anEditor methodCodePrefix size + (self rangeOffsetIn: anEditor statement: anInteger).
	
	anEditor codeTextMorphs do: [ :morph |
		self addAttributesTo: morph textMorph text from: start to: stop.
		morph changed ].