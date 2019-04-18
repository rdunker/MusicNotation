applying
applyCustomPropsTo: anObject
	customProps ifNotNil: [
		self customProps associationsDo: [ :association |
			anObject perform: association key with: association value ]].
	