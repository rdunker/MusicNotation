updating
updateDivisions
	
	self divisions: 1.
	self notes do: [ :note | self updateDivisionsWithNote: note ]