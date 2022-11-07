initialize-release
initialize
	super initialize.
	
	self children: (MNChildCollection parent: self).