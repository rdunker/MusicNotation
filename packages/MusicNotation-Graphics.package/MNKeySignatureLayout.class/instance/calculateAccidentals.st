calculating
calculateAccidentals
	| newAccidentals oldAccidentals |
	newAccidentals := self key accidentals.	
	oldAccidentals := self leftKey accidentals.
	(self clefChanged)
		ifTrue: [ oldAccidentals := OrderedCollection new ].
	
	^ self calculateAccidentalChanges: newAccidentals since: oldAccidentals