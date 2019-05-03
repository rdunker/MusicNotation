as yet unclassified
newBravura
	| font |
	font := self new.
	font bounds: (0 @ 0 corner: 1 @ 1).
	font parseGlyphs: ''.
	^ font
