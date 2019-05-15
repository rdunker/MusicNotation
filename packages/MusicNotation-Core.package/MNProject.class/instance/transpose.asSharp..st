transposing
transpose: anInteger asSharp: aBoolean

	self parts do: 
		[ :part |
		part transpose: anInteger asSharp: aBoolean ]