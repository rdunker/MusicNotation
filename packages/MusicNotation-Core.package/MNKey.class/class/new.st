instance creation
new
	self isAbstract
		ifTrue: [ ^ self halt: 'MNKey is an abstract class' ].
	^ super new