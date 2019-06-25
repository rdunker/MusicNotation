as yet unclassified
applyCustomPropsTo: anObject
	customProps ifNotNil: [
		self customProps keysAndValuesDo: [ :selector :value |
			anObject perform: selector with: value ]].