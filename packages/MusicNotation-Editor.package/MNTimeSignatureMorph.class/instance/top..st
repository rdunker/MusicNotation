accessing
top: aCodePoint
	({ 0 . 1 . 2 . 3 . 4 . 5 . 6 . 7 . 8 . 9 } includes: aCodePoint) 
		ifTrue: [
			top := aCodePoint ]
		ifFalse: [
			MNInvalidValue for: self at: #top: value: aCodePoint ] 