drawing
drawMeasureLinesOn: aCanvas
	| offset extent origin |
	origin := self leftCenter - (0 @ (self lineWidth // 2)).
	extent := self width @ self lineWidth.
	-2 to: 2 do: [ :index |
		offset := 0@(index * self noteLineHeight).
		aCanvas
			drawRectangle: (origin + offset extent: extent)
			color: Color gray
			borderWidth: 0
			borderColor: nil ].
	