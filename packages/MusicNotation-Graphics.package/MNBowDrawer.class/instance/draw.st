as yet unclassified
draw

	| start mid end|

	start := (self calculateNotePosition: self startNote).
	end := (self calculateNotePosition: self endNote).
	mid := self calculateMidPointFrom: start To: end.

	
	self canvas drawBezierShape: {start. mid. end.}
		color: Color transparent
		borderWidth: 1
		borderColor: Color black.