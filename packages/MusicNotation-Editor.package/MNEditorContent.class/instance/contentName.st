accessing
contentName
	| stream |
	stream := self text readStream.
	
	(stream skipSeparatorsAndPeekNext == $")
		ifFalse: [ ^ nil ].
	
	^ (stream nextDelimited: $")
		ifEmpty: [ nil ]