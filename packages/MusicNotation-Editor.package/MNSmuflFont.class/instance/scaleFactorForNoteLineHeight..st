as yet unclassified
scaleFactorForNoteLineHeight: aNumber
	| scaleFactor |
	scaleFactor := aNumber / self noteLineHeightUnits.
	^ self bounds height negative
		ifTrue: [ scaleFactor @ scaleFactor negated ]
		ifFalse: [ scaleFactor @ scaleFactor ]