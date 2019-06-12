drawing
drawOn: aCanvas
	self keySignature
		ifNotNil: [ super drawOn: aCanvas ].