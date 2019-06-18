calculating
calculateLines
	| baseSteps |
	baseSteps := self clef
		ifNil: 38
		ifNotNilDo: #baseSteps.
	^ (self note pitches
		collect: [ :pitch | baseSteps - pitch steps / 2 ])
		sort