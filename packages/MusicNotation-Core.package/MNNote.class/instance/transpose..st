transposing
transpose: anInteger

	self pitches do: 
		[ :pitch |
		pitch transpose: anInteger ]