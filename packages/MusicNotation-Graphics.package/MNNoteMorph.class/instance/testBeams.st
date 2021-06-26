event handling
testBeams
	| note2|
	(self ignoreBeam or: [self noteLayout lines isEmpty]) ifFalse: [
	note2 := self findNextNoteWithDifferentDurationWithStart: self index: 3.0.
	"note2 := note2 nextSymbol."
	
	(self = note2 or: [self noteLayout lines isEmpty]) ifFalse: [
		(self beamIsDiagonalTill: note2)
			ifTrue: [ MNBeamDrawer canvas: self partCanvas startNote: note2 endNote: self lines: ((note2 note duration denominator) log2 - 2.0)];
			ifFalse: [
				self maxHeight: (self findMaxHeightTill: (note2) currMaxHeight: 40).
				self minNoteHeight: (self findMinHeightTill: (note2) currMinHeight: -40).
				MNBeamDrawer canvas: self partCanvas startNote: note2 endNote: self lines: ((note2 note duration denominator) log2 - 2.0) maxHeight: self maxHeight minHeight: self minNoteHeight.
		]];
		ifTrue: [self maxHeight: 0.].
	].

	