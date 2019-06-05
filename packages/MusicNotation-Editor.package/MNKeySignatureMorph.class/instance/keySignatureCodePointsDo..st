as yet unclassified
keySignatureCodePointsDo: aBlock
	self keySignature do: [ :each |
		aBlock value: (self codePointOf: each first) value: each second ].