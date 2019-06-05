accessing
clefCodePoint: aCodePoint
	({ 16rE050 } includes: aCodePoint) 
		ifTrue: [
			clefCodePoint := aCodePoint ]
		ifFalse: [
			MNInvalidValue for: self at: #clefCodePoint: value: aCodePoint ] 