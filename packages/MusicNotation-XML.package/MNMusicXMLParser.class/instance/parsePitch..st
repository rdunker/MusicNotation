parsing
parsePitch: xmlPitch
	| pitch |
	pitch := MNPitch new.
	pitch step: (self stringNamed: #step in: xmlPitch).
	pitch octave: (self stringNamed: #octave in: xmlPitch) asInteger.
	pitch alter: (self stringNamed: #alter in: xmlPitch ifAbsent: 0) asInteger.
	^ pitch