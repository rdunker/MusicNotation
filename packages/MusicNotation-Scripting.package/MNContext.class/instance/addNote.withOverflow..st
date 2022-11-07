auxiliary
addNote: aNote withOverflow: aNumber
	| collection |
	collection := (aNote createCopiesForDuration: aNote duration - aNumber withBlock: self tiedBlock) reversed.
	collection first tieStop: aNote tieStop.
	collection last tieStart: aNumber strictlyPositive.
	collection do: [ :note | self measure addNote: note ].