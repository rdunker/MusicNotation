accessing
alter: anObject
	(#(-1 0 1) includes: anObject)
		ifFalse: [ self halt: 'invalid alter: ', anObject, ' (allowed values: -1, 0, 1)' ].
	alter := anObject.