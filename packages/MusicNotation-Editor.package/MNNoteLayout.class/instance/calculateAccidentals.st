calculating
calculateAccidentals
	| collection dict |
	dict := self note parent
		ifNil: [ Dictionary new ]
		ifNotNilDo: [ :p | p key accidentals as: Dictionary ].
	
	collection := OrderedCollection new.
	
	self note pitches with: self lines do: [ :pitch :line |
		pitch alter = (dict at: pitch step ifAbsent: 0)
			ifFalse: [ collection add: line -> (16rE261 + pitch alter) ]].
	
	^ collection