as yet unclassified
applyAttributesSelected: aBoolean to: aText from: start to: stop
	| end |
	end := aText size min: stop.
	start > end ifTrue: [ ^ self ].
	
	self selectedAttributes do:
		[ :attribute | 
			aBoolean
				ifTrue: [aText addAttribute: attribute from: start to: end]
				ifFalse: [aText removeAttribute: attribute from: start to: end]]