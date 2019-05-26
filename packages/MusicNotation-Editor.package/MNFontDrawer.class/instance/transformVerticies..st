as yet unclassified
transformVerticies: verticies
	| scale translate |
	scale := self fontScale.
	translate := self position + self offset.
	^ verticies collect: [ :p | p * scale + translate ]