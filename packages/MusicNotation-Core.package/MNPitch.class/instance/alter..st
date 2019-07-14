accessing
alter: anObject
	(#(-2 -1 0 1 2) includes: anObject)
		ifFalse: [ MNInvalidValue for: self at: #alter
			value: anObject description: 'allowed values: -2, -1, 0, 1, 2' ].
	alter := anObject.