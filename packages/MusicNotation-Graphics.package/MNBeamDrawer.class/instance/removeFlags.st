drawing
removeFlags
	self notes do: [:note | note noteLayout drawFlag: false].
