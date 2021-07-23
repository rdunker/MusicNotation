accessing
triole
	triole ifNil: [triole := OrderedCollection new add: self; yourself].
	^ triole