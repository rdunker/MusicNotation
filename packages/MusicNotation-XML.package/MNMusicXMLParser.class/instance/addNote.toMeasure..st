parsing
addNote: aNote toMeasure: aMeasure
	aNote chordPart
		ifTrue: [ aMeasure notes last addPitch: aNote pitches first copy ]
		ifFalse: [ aMeasure addNote: aNote ].