controlling
ifRest: restBlock ifNote: noteBlock
	^ self isRest ifTrue: restBlock ifFalse: noteBlock