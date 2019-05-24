as yet unclassified
transformVerticies: verticies
	| scale translate |
	scale := self lineHeight / self font bounds height.
	self font bounds height < 0 ifTrue: [ scale := scale negated @ scale ].
	translate := self position + (0 @ self offset).
	^ verticies collect: [ :p | p * scale + translate ]