accessing
baseSound
	^ baseSound ifNil: [ self defaultBaseSound ]