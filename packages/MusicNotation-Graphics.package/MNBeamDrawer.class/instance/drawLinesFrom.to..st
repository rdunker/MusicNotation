drawing
drawLinesFrom: startPoint to: endPoint
	| heightOffset start end |
	
	heightOffset := 0.
	0 to: (self beamNumber - 1) do: [ :index |
		heightOffset := index * self lineOffset.
		start := startPoint + self beamExtent + (0@heightOffset).
		end := endPoint + self beamExtent + (self endNoteOffset@heightOffset).
		self drawLineFrom: start to: end].