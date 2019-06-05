as yet unclassified
codePointsAndOffsets
	| keySignatureCollection codePoint |
	(fifths = 0) ifTrue: [ ^ { } ].
	keySignatureCollection := self class keySignatureSharpCollection.
	codePoint := self class codePointSharp.
	(fifths < 0) ifTrue: 
		[ 
			keySignatureCollection := self class keySignatureFlatCollection.
			codePoint := self class codePointFlat ].
	^ keySignatureCollection collect: [ :value | { codePoint . value } ] from: 1 to: fifths abs.
	