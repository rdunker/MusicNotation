class initialization
content: aString
	^ self new
		content: aString;
		list: OrderedCollection new;
		statement: '';
		waitingFor: Stack new;
		yourself.