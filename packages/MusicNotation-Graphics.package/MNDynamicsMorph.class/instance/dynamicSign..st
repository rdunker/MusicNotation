accessing
dynamicSign: aCodePoint
	({ 16rE520 . 16rE521 . 16rE522 . 16rE523 . 16rE524 . 16rE525 . 16rE526 } includes: aCodePoint) 
		ifTrue: [
			dynamicSign := aCodePoint ]
		ifFalse: [
			MNInvalidValue for: self at: #dynamicSign: value: aCodePoint ]