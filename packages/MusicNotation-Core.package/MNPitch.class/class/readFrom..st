instance creation
readFrom: aStringOrStream
	| stream |
	stream := aStringOrStream isString 
		ifTrue: [ aStringOrStream readStream ]
		ifFalse: [ aStringOrStream ].
	^ MNPitch new
		step: stream next;
		octave: (Integer readFrom: stream);
		yourself