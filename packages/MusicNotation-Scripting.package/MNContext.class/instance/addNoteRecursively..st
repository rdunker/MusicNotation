accessing
addNoteRecursively: aNote
	| overflow tiedBlock collection |
	aNote duration strictlyPositive
		ifFalse: [ ^ self ].
	tiedBlock := [ :note |
		note tieStart: true;
			tieStop: true ].
		
	overflow := (aNote duration + (self measure notes detectSum: #duration) - self measure time) max: 0.
	collection := (aNote createCopiesForDuration: aNote duration - overflow withBlock: tiedBlock) reversed.
	collection first tieStop: aNote tieStop.
	collection last tieStart: overflow strictlyPositive.
	collection do: [ :note | self measure addNote: note ].
	
	overflow strictlyPositive ifTrue: [ 
		self part addMeasure: self measure copyEmpty.
		self addNoteRecursively: (aNote copy
			duration: overflow;
			tieStop: true;
			yourself) ].