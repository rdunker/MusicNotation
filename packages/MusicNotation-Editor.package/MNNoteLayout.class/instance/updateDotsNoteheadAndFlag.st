updating
updateDotsNoteheadAndFlag
	self dots: self calculateDots.
	self lines
		ifEmpty: [
			self notehead: self calculateRest ]
		ifNotEmpty: [
			self notehead: self calculateNotehead.
			self flagCodePoint: self calculateFlag ].