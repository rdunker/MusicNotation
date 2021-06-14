copying
postCopy
	super postCopy.
	
	self children: (MNChildCollection parent: self).