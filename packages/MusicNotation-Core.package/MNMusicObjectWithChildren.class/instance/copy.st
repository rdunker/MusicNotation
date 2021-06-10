copying
copy
	^ super copy
		childrenReplaceWith: self children copy;
		yourself