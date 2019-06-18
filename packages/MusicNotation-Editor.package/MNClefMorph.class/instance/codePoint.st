accessing
codePoint
	| index |
	index := #gfc indexOf: self clef sign.
	index isZero
		ifTrue: [ MNInvalidValue for: self clef at: #sign ].
	^ #(16rE050 16rE062 16rE05C) at: index