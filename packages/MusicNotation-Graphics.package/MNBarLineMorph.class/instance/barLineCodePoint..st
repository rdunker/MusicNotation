accessing
barLineCodePoint: aCodePoint
	({ 16rE030 . 16rE031 . 16rE032 . 16rE033 . 16rE040 . 16rE041 . 16rE042 } includes: aCodePoint) 
		ifTrue: [
			barLineCodePoint := aCodePoint ]
		ifFalse: [
			MNInvalidValue for: self at: #barLineCodePoint: value: aCodePoint ] 