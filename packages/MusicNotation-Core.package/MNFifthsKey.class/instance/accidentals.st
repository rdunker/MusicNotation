accessing
accidentals
	| sign |
	sign := self fifths sign.
	^ self allSymbols asOrderedCollection
		collect: [ :each | each -> sign ] from: 1 to: self fifths abs.