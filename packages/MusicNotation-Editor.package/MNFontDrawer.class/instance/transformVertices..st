parsing
transformVertices: vertices
	| scale translate |
	scale := self fontScale.
	translate := self position + self offset.
	^ vertices collect: [ :p | p * scale + translate ]