updating style
updateContentsSelect: aCollection toEditor: anEditor
	(1 to: self contentsList size) do:
		[ :each | self applyStyleSelected: (aCollection includes: each) toStatement: each toEditor: anEditor]