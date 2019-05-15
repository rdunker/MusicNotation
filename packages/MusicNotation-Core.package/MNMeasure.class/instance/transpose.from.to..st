transposing
transpose: anInteger from: start to: end

	"Transposes all Notes from start to end by anInteger halfsteps. start and end can be a Note in this measure or their index."
	| startIndex endIndex |
			
	startIndex := self getIndex: start.
	endIndex := self getIndex: end.
	self notes from: startIndex to: endIndex do: [ :note | note transpose: anInteger ]
	