updating
updateNoteheadAndFlag
	self
		ifRest: [ self
			notehead: self calculateRest ]
		ifNote: [ self
			flagCodePoint: self calculateFlag;
			notehead: self calculateNotehead ].