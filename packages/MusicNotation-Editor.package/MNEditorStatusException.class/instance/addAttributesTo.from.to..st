accessing
addAttributesTo: aText from: start to: stop
	| end |
	end := aText size min: stop.
	start > end ifTrue: [ ^ self ].
	
	aText
		addAttribute: TextColor red from: start to: end;
		addAttribute: TextEmphasis bold from: start to: end;
		addAttribute: TextEmphasis italic from: start to: end;
		addAttribute: TextEmphasis underlined from: start to: end.