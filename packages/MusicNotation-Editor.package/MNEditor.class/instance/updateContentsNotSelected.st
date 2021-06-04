symbol selection
updateContentsNotSelected
	(1 to: self content contentsList size) do:
		[ :i | self content applyStyleSelected: false toStatement: i toEditor: self].