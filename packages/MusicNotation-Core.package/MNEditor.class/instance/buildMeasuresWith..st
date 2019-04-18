as yet unclassified
buildMeasuresWith: aBuilder
	| measures |
	measures := OrderedCollection new.
	0 to: 3 do: [ :y |
		0 to: 1 do: [ :x |
			measures add: (self buildMeasureWith: aBuilder at: x@y) ]].
	^ measures