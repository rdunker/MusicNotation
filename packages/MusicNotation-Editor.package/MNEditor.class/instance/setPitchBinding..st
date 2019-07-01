binding
setPitchBinding: pitchName
	
	| pitchString |
	pitchString := pitchName asString.
	(pitchString size = 1) ifTrue: [ pitchString := pitchString, 4].
	self bindings 
		at: pitchName asString 
		put: (MNNoteBuilder context: self mncontext pitchFrom: pitchString).