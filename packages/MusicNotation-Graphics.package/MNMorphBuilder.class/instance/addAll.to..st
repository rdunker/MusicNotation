converting
addAll: aCollection to: aMorph
	aCollection do: [ :each |
		self add: each to: aMorph ].