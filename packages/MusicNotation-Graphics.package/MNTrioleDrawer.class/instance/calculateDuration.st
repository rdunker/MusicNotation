drawing
calculateDuration

	((self notes first) note trioled) ifFalse: [
	self notes do: [:note | 
		note note duration: (note note duration * (2/3)).
		note note trioled: true]].

	