symbol selection
updateContentsNotSelected
	(1 to: self content contentsList size) do:
		[ :each | self content applyStyleSelected: false toStatement: each toEditor: self].