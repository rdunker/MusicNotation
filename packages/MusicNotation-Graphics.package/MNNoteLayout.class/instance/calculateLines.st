calculating
calculateLines
	^ (self note pitches
		collect: self lineConverterBlock)
		sort