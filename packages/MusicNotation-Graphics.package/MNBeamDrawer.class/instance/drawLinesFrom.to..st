drawing
drawLinesFrom: startPoint to: endPoint
	| offset |
	offset := 0.
	0 to: (self beamNumber - 1) do: [ :index |
		offset := (index * (self notes last) noteLineHeight*0.75).
		self canvas 
			line: startPoint + self beamExtent + (0@offset)
			to: endPoint + self beamExtent + (-2* self beamExtent x@offset)
			width: self beamHeight
			color: Color black.
	].