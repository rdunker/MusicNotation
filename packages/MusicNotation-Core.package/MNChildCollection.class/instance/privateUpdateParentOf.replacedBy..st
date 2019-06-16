private
privateUpdateParentOf: oldObject replacedBy: newObject
	(oldObject == newObject)
		ifTrue: [ ^ newObject ].
	
	oldObject privateAbandon.
	^ self parent privateAdopt: newObject