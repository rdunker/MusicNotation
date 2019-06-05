as yet unclassified
newKeySignatureFromFifths: aNumber
	| keySignatureCollection codePoint keySignature |
	(aNumber = 0) ifTrue: [ ^ { } ].
	(aNumber > 0) ifTrue:
		[
			keySignatureCollection := self keySignatureSharpCollection.
			codePoint := self codePointSharp ]	
	ifFalse: 
		[ 
			keySignatureCollection := self keySignatureFlatCollection.
			codePoint := self codePointFlat ].
	keySignature := keySignatureCollection collect: [ :value | { codePoint . value / 2 } ] from: 1 to: aNumber abs.
	^ self new keySignature: keySignature.