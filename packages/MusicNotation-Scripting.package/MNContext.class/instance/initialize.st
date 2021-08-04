initialize-release
initialize
	super initialize.
	
	self project: MNProject new.
	self project addPart: MNPart new.
	self part addMeasure: MNMeasure new.
	self localVariables: Dictionary new.