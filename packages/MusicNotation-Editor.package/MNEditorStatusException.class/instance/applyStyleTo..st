accessing
applyStyleTo: anEditor
	| start stop |
	start := self range start - anEditor methodCodePrefix size.
	stop := self range stop - anEditor methodCodePrefix size.
	
	anEditor codeTextMorphs do: [ :morph |
		self addAttributesTo: morph textMorph text from: start to: stop.
		morph changed ].