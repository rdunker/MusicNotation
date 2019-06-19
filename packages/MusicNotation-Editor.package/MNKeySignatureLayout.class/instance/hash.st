comparing
hash
	^ MNHashBuilder
		hash: self key
		hash: self clef
		hash: self leftKey
		hash: self leftClef