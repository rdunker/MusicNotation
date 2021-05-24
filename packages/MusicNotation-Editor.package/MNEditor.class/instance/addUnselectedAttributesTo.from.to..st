as yet unclassified
addUnselectedAttributesTo: aText from: start to: stop
	| end |
	end := aText size min: stop.
	start > end ifTrue: [ ^ self ].
	
	aText
		removeAttribute: TextColor green from: start to: end;
		removeAttribute: TextEmphasis bold from: start to: end;
		removeAttribute: TextEmphasis italic from: start to: end.