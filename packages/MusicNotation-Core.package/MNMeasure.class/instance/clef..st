accessing
clef: anObject
	clef ifNotNil: [clef privateAbandon].
	clef := self privateAdopt: anObject.