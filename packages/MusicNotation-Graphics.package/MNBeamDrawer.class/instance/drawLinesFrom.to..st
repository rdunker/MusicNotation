drawing
drawLinesFrom: startPoint to: endPoint
	| endOffset lineOffset lineFactor |
	lineFactor := -1 * self notes last noteLayout stemDirection.
	lineOffset := 0.
	endOffset := -2* self beamExtent x + 0.45.
	self notes last noteLayout up not ifTrue: [endOffset := endOffset + 0.05].
	0 to: (self beamNumber - 1) do: [ :index |
		lineOffset := lineFactor * (index * (self notes last) noteLineHeight*0.75).
		self canvas 
			line: startPoint + self beamExtent + (0@lineOffset)
			to: endPoint + self beamExtent + (endOffset@lineOffset)
			width: self beamHeight
			color: Color black].