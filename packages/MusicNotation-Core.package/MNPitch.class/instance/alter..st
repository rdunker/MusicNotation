accessing
alter: anObject
	(#(-1 0 1) includes: anObject)
		ifFalse: [ MNInvalidValue for: self at: #alter
			value: anObject description: 'allowed values: -1, 0, 1' ].
	alter := anObject.