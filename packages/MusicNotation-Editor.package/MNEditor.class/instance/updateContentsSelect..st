as yet unclassified
updateContentsSelect: aCollection
	| contentsList statement |
	
	contentsList := self contentsList.
	self resetContents.
	(1 to: contentsList size) do:
		[ :i | statement := contentsList at: i.
			(aCollection includes: i) 
				ifTrue: [statement := statement, '*'.].
			self contents: self contents, statement, '.' ].