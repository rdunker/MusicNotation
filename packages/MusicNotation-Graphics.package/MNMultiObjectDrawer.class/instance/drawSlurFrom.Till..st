as yet unclassified
drawSlurFrom: startNote Till: endNote

| start mid end up |
((startNote noteLayout up) and: [endNote noteLayout up]) ifTrue: [up := true] ifFalse: [up := false].
start := (self calculateNotePosition: startNote isUp: up).
end := (self calculateNotePosition: endNote isUp: up).
mid := self calculateMidPointFrom: start To: end isUp: up.

	
self canvas drawBezierShape: {start. mid. end.}
	color: Color transparent
	borderWidth: 1
	borderColor: Color black.