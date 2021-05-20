accessing
addNoteRecursively: aNote
	| totalDuration overflow |
	aNote duration strictlyPositive
		ifFalse: [ ^ self ].
	
	totalDuration := aNote duration + self measure noteDuration.
	overflow := (totalDuration - self measure time) max: 0.
	
	((aNote duration - overflow) strictlyPositive)
		ifTrue: [ self addNote: aNote withOverflow: overflow ].
	
	(totalDuration = self measure time) ifTrue: [ self addMeasure ].
	
	(overflow strictlyPositive)
		ifTrue: [ 
			self addMeasure.
			self addNoteRecursively: (aNote copy
				duration: overflow;
				tieStop: true;
				yourself) ].