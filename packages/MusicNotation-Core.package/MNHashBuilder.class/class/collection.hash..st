comparing
collection: aCollection hash: b
	^ self
		hash: (self collection: aCollection)
		hash: b