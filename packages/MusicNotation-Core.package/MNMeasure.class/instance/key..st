accessing
key: anObject
	key ifNotNil: [key privateAbandon].
	key := self privateAdopt: anObject.