comparing
collection: aCollection hash: b hash: c hash: d
	^ self
		hash: (self collection: aCollection)
		hash: b
		hash: c
		hash: d