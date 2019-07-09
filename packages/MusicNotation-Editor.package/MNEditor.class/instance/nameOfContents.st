accessing
nameOfContents
	| stream |
	stream := self contents readStream.
	
	(stream skipSeparatorsAndPeekNext == $")
		ifFalse: [ ^ nil ].
	
	^ (stream nextDelimited: $")
		ifEmpty: [ nil ]