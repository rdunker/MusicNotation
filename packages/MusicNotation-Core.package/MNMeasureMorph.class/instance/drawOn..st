drawing
drawOn: aCanvas
	| step |
	step := self height / 6.
	1 to: 5 do: [ :i | self drawLineOn: aCanvas at: step * i ].