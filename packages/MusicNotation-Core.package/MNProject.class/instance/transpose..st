transposing
transpose: anInteger 

	self parts do: 
		[ :part |
		part transpose: anInteger ]