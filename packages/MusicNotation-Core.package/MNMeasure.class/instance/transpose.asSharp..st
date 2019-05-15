transposing
transpose: anInteger asSharp: aBoolean

	self notes do: 
		[ :note |
		note transpose: anInteger asSharp: aBoolean ]