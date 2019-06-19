calculating
lineOf: anAssociation
	| index allLines |
	index := self stepSequence indexOf: anAssociation key.
	allLines := anAssociation value positive
		ifTrue: [ self allSharpLines ]
		ifFalse: [ self allFlatLines ].
	^ allLines at: index