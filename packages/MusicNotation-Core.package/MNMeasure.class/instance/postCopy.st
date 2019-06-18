copying
postCopy
	super postCopy.
	
	clef := self privateAdopt: clef copy.
	key := self privateAdopt: key copy.