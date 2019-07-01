accessing
error: anError in: anEditor
	self message: anError asString.
	self range: (self rangeIn: anError signalerContext sender).