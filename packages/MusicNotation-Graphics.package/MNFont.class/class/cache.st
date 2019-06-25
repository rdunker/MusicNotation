accessing
cache
	^ CACHE ifNil: [ CACHE := Dictionary new ]