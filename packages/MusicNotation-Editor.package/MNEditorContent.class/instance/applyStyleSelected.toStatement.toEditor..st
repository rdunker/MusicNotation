updating style
applyStyleSelected: aBoolean toStatement: anInteger toEditor: anEditor
	anEditor codeTextMorphs do: 
		[ :morph |
			self applyAttributesSelected: aBoolean 
				to: morph textMorph text 
				from: (self startOfStatement: anInteger)
				to: (self endOfStatement: anInteger).
			morph changed ].