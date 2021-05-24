as yet unclassified
applyUnselectedStyle: anInteger
	| start stop |
	
	start := (self rangeOffsetStatement: anInteger) + 1.
	stop := start + ((self contentsList at: anInteger) size) - 1.
	self codeTextMorphs do: [ :morph |
			self addUnselectedAttributesTo: morph textMorph text from: start to: stop.
			morph changed ].