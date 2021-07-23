accessing
stopTie
	self lastNote tieStop: true.
	"self lastNote leftSibling tieStart 
		ifFalse: [MNInvalidValue for: self at: #measure description: 'tieStop not at next note']."