tests
testNoteAccept
	| note |
	note := MNNote new.
	self assert: (MNTestCallRecorder new
		do: [ :v | note accept: v ];
		isSingleCallTo: #visitNote: with: note).