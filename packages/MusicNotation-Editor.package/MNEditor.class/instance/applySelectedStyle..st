as yet unclassified
applySelectedStyle: anInteger
	| start stop |
	
	start := (self rangeOffsetStatement: anInteger) + 1.
	stop := start + ((self contentsList at: anInteger) size) - 1.
	self codeTextMorphs do: [ :morph |
			self addSelectedAttributesTo: morph textMorph text from: start to: stop.
			morph changed ].