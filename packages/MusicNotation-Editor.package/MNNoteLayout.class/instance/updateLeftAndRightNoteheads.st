updating
updateLeftAndRightNoteheads
	self calculateNoteheads: [ :normal :special | self
		ifUp: [ self
			leftNoteheads: normal;
			rightNoteheads: special ]
		ifDown: [ self
			leftNoteheads: special;
			rightNoteheads: normal ]].