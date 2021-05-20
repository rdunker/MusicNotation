as yet unclassified
addSelectedAttributesTo: aText from: start to: stop
	| end |
	end := aText size min: stop.
	start > end ifTrue: [ ^ self ].
	
	aText
		addAttribute: TextColor green from: start to: end;
		addAttribute: TextEmphasis bold from: start to: end;
		addAttribute: TextEmphasis italic from: start to: end.