accessing
bottom: aCodePoint
	({ 0 . 1 . 2 . 3 . 4 . 5 . 6 . 7 . 8 . 9 } includes: aCodePoint) 
		ifTrue: [
			bottom := aCodePoint ]
		ifFalse: [
			MNInvalidValue for: self at: #bottom: value: aCodePoint ] 