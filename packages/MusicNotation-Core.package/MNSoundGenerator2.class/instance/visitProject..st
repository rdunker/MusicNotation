visiting
visitProject: aProject
	aProject parts ifEmpty: [ ^ self ].
	
	aProject parts size = 1
		ifTrue: [ ^ aProject parts first accept: self ].
	
	self addSound: (self generateMixedSound: aProject parts
		collect: [ :each | each asSound ]).