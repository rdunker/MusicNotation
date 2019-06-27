instance creation
readFrom: aStringOrStream
	| stream pitch alter |
	stream := aStringOrStream isString 
		ifTrue: [ aStringOrStream readStream ]
		ifFalse: [ aStringOrStream ].
	pitch := MNPitch new
		step: stream next;
		octave: (Integer readFrom: stream);
		yourself.
	alter := #fns indexOf: stream next.
	alter strictlyPositive
		ifFalse: [ alter := 2 ].
	pitch alter: alter - 2.
	^ pitch