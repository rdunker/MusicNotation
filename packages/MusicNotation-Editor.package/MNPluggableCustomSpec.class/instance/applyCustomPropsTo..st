as yet unclassified
applyCustomPropsTo: anObject
	self customProps ifNotNil: [
		self customProps keysAndValuesDo: [ :selector :value |
			anObject perform: selector with: value ]].