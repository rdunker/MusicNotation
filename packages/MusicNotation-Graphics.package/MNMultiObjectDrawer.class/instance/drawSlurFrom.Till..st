as yet unclassified
drawSlurFrom: startNote Till: endNote

| start mid end |
start := (self calculateNotePosition: startNote).
end := (self calculateNotePosition: endNote).
mid := self calculateMidPointFrom: start To: end.
	
self canvas drawBezierShape: {start. mid. end.}
	color: Color transparent
	borderWidth: 1
	borderColor: Color black.