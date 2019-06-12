calculating
calculateNoteDots
	| spaces dotSet offset |
	dotSet := Set new.
	spaces := self lines collect: [ :line | line + (1/2) ].
	spaces sort: [ :a :b |
		(a isInteger = b isInteger)
			ifTrue: [ a <= b]
			ifFalse: [ a isInteger ]].
	
	offset := 0.
	[ spaces isEmpty ] whileFalse: [
		spaces := spaces reject: [ :space |
			(dotSet ifAbsentAdd: space floor - offset)
			or: [ dotSet ifAbsentAdd: space ceiling + offset ]].
		offset := offset + 1 ].
	
	^ dotSet collect: [ :space | space - (1/2) ] as: OrderedCollection
	