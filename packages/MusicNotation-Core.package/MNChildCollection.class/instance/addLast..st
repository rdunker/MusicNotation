adding
addLast: newObject
	super addLast: newObject.
	newObject privateParent: self parent.
	^ newObject