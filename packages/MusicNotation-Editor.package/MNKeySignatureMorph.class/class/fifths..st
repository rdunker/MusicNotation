instance creation
fifths: anInteger
	| keySignature |
	anInteger isZero ifTrue: [ ^ self new ].
	
	keySignature := anInteger negative 
		ifTrue: [
			self keySignatureFlatCollection copyFrom: 1 to: anInteger negated ]
		ifFalse: [
			self keySignatureSharpCollection copyFrom: 1 to: anInteger ].
	
	^ self new
		keySignature: keySignature;
		yourself