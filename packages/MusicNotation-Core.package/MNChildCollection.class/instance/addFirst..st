adding
addFirst: newObject
	super addFirst: newObject.
	newObject privateParent: self parent.
	^ newObject