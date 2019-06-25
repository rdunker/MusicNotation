accessing
clef
	^ self key parent
		ifNil: [ MNClef new ]
		ifNotNilDo: #clef