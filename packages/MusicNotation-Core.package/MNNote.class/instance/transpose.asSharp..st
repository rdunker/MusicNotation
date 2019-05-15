transposing
transpose: anInteger asSharp: aBoolean

	self pitches do: 
		[ :pitch |
		pitch transpose: anInteger asSharp: aBoolean ]