event handling
testBeams
	| note2|
	self ignoreBeam ifFalse: [
	note2 := self findNextNoteWithDifferentDurationWithStart: self index: 4.0.
	note2 := note2 nextSymbol.
	
	self = note2 ifFalse: [
		(self testStandardStartTill: note2)
			ifTrue: [ MNBeamDrawer canvas: self partCanvas startNote: note2 endNote: self lines: ((note2 note duration denominator) log2 - 2.0)];
			ifFalse: [
				self maxHeight: (self testFindMaxHeightTill: (note2) maxHeight: 20).
				MNBeamDrawer canvas: self partCanvas startNote: note2 endNote: self lines: ((note2 note duration denominator) log2 - 2.0) height: self maxHeight
		]];
		ifTrue: [self maxHeight: 0.].
	].

	