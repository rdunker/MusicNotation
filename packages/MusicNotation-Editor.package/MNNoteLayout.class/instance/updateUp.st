updating
updateUp
	self up: (self lines isEmpty
		or: [ self lines first + self lines last >= 0 ]).