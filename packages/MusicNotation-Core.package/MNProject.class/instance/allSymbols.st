accessing
allSymbols
	| symbols |
	symbols := Set new.
	self parts do: 
		[ :part | symbols := symbols union: part allSymbols ].
	^ symbols