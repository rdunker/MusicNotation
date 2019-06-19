accessing
at: anInteger put: anObject
	| oldObject |
	oldObject := self at: anInteger. 
	super at: anInteger put: anObject.
	^ self privateUpdateParentOf: oldObject replacedBy: anObject