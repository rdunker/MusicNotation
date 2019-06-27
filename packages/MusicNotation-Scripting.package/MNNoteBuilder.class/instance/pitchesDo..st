accessing
pitchesDo: aBlock
	^ (self pitches collect: #copy) do: aBlock