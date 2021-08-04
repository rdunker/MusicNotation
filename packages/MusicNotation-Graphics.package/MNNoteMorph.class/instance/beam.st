accessing
beam
	beam ifNil: [beam := OrderedCollection new add: self; yourself].
	^ beam