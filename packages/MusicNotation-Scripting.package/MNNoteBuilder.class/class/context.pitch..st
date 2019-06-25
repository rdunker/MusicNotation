instance creation
context: aContext pitch: aString
	| pitch |
	pitch := MNPitch readFrom: aString.
	^ self context: aContext pitches: (OrderedCollection newFrom: { pitch }).