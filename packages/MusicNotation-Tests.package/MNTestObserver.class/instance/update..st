updating
update: aParameter
	aParameter isSymbol ifTrue: [ self changes add: aParameter ].