updating
updateDotsNoteheadAndFlag
	self dots: self calculateDots.
	self
		ifRest: [
			self notehead: self calculateRest ]
		ifNote: [
			self flagCodePoint: self calculateFlag.
			self notehead: self calculateNotehead ].