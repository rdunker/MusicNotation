calculating
lineConverterBlock
	| baseSteps |
	baseSteps := self clef
		ifNil: 38
		ifNotNilDo: #baseSteps.
	^ [ :pitch | baseSteps - pitch steps / 2 ]