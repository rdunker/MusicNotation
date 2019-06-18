accessing
keySignatureLayout
	^ keySignatureLayout ifNil: [
		keySignatureLayout := MNKeySignatureLayout new
			key: self key;
			yourself ]