parsing
read_z
	self shape ifEmpty: [ ^ self ].
	self closeShape. 
	self finishShape.