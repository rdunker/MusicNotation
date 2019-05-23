parsing
parseNote: xmlNote
	| note |
	note := MNNote new.
	note duration: (self stringNamed: #duration in: xmlNote) asInteger / self divisions.
	(xmlNote firstTagNamed: #pitch)
		ifNotNil: [ :xmlPitch | note addPitch: (self parsePitch: xmlPitch) ].
	^ note