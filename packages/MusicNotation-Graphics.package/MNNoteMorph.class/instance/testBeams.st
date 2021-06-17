event handling
testBeams
	| note2 maxHeight |
	note2 := self findNextNoteWithDifferentDurationWithStart: self.
	note2 := note2 lastNote.
	maxHeight := self testFindMaxHeightTill: note2 maxHeight: 5.
	"self halt."
	self = note2 ifFalse: [
		MNBeamDrawer canvas: self partCanvas startNote: self endNote: note2 lines: ((note2 note duration denominator) log2 - 2.0) "height: maxHeight"].

	