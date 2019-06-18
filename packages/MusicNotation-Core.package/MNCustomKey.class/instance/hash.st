comparing
hash
	^ MNHashBuilder
		collection: self accidentals
		collect: [ :each | MNHashBuilder
			hash: each key
			hash: each value ]