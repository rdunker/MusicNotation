instance creation
context: aContext pitchFrom: aString
	| pitch |
	pitch := MNPitch readFrom: aString.
	^ self context: aContext pitches: (OrderedCollection with: pitch).