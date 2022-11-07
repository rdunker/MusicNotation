accessing
error: anError in: anEditor
	self exception: anError.
	self message: anError asString.
	self range: (self rangeIn: anError signalerContext).