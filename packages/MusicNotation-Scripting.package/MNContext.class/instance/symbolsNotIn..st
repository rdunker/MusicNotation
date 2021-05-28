accessing
symbolsNotIn: aCollection
	^ self project allSymbols reject: [ :symbol | aCollection includes: symbol] 