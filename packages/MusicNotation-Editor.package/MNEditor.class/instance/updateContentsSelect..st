as yet unclassified
updateContentsSelect: aCollection
	| statement |
	
	(1 to: self contentsList size) do:
		[ :i | statement := self contentsList at: i.
				(aCollection includes: i) 
					ifTrue: [self applySelectedStyle: i]]