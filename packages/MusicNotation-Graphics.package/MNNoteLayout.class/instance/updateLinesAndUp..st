updating
updateLinesAndUp: newLines
	self up: (newLines isEmpty
		or: [ newLines first + newLines last >= 0 ]).
	
	self lines: (self
		ifUp: [ newLines reversed ]
		ifDown: [ newLines ]).