initialize-release
setPitchBinding: pitchName
	| noteBuilder pitchString |
	pitchString := pitchName asString.
	(pitchString size = 1)
		ifTrue: [ pitchString := pitchString, 4].
	noteBuilder := MNNoteBuilder context: self context pitchFrom: pitchString.
	self bindings add: pitchName asSymbol => noteBuilder.