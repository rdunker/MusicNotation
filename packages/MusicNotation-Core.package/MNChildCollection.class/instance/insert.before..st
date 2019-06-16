private
insert: anObject before: index
	anObject privateParent: self parent.
	^ super insert: anObject before: index