calculation
maxHeight
	^ (self notes collect: [:note | note noteLayout lines first]) min
