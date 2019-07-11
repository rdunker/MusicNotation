instance creation
readFrom: aStringOrStream
	| stream pitch alter |
	stream := aStringOrStream isString 
		ifTrue: [ aStringOrStream readStream ]
		ifFalse: [ aStringOrStream ].
	pitch := self new
		step: stream next;
		octave: (Integer readFrom: stream);
		yourself.
	alter := #fns indexOf: stream next.
	alter isZero ifFalse: [ pitch alter: alter - 2 ].
	^ pitch