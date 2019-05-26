updating
update
	self updateLines.
	self updateUp.
	self ifUp: [ self lines: self lines reversed ].
	self updateLeftAndRightNoteheads.
	self updateDotsNoteheadAndFlag.
	lastHash := self note hash.