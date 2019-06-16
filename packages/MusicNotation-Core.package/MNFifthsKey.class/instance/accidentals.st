accessing
accidentals
	| sign |
	sign := fifths sign.
	^ self allSymbols asOrderedCollection
		collect: [ :each | each -> sign ] from: 1 to: fifths abs.