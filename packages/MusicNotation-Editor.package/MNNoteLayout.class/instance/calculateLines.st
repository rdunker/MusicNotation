calculating
calculateLines
	^ (self note pitches
		collect: [ :pitch | 34 - pitch steps / 2 ])
		sort