drawing
growStems
	self notes do: [:note | note noteLayout stemLength: (self stemOffset: note)].
