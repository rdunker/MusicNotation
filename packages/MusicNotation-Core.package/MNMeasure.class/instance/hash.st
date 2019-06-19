comparing
hash
	^ MNHashBuilder
		hash: self notes
		hash: self key
		hash: self time
		hash: self clef