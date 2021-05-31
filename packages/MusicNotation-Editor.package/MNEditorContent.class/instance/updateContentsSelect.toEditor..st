updating style
updateContentsSelect: aCollection toEditor: anEditor
	(1 to: self contentsList size) do:
		[ :i | self applyStyleSelected: (aCollection includes: i) toStatement: i toEditor: anEditor]