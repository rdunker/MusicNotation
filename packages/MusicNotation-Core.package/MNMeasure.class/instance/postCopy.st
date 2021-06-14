copying
postCopy
	super postCopy.
	
	self clef: self clef copy.
	self key: self key copy.