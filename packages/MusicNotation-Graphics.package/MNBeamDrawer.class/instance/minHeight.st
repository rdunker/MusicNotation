drawing
minHeight
	^ (self notes collect: [:note | note noteLayout lines first]) max
