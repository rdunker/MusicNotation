comparing
collection: aCollection hash: b hash: c
	^ self
		hash: (self collection: aCollection)
		hash: b
		hash: c