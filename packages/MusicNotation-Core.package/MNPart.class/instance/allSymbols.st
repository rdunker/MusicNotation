accessing
allSymbols
	| symbols |
	symbols := Set new.
	self measures do: 
		[ :measure | symbols := symbols union: measure allSymbols ].
	^ symbols